package lib

import (
	"os"
	"fmt"
	"github.com/neo4j/neo4j-go-driver/v4/neo4j"
)

func Neo4jConnect(from, to string) ([]float64, []float64, error) {
	// uri := os.Getenv("NEO4J_URI")
	username := os.Getenv("NEO4J_USER")
	pass := os.Getenv("NEO4J_PASSWORD")

	// neo4jサーバーと接続
	driver, err := neo4j.NewDriver("neo4j://172.19.0.1:57687", neo4j.BasicAuth(username, pass, ""))
	if err != nil {
		return nil, nil, err
	}
	defer driver.Close()

	session := driver.NewSession(neo4j.SessionConfig{AccessMode: neo4j.AccessModeWrite})
	defer session.Close()

	// Cypherで取得してきた緯度、経度を格納する配列
	var lat []float64
	var lng []float64

	// Cypherで最短経路を検索するクエリ
	cypher := fmt.Sprintf(`MATCH (from:Building {point_name: "%s"}), (to:Building {point_name: "%s"}), path=allShortestPaths ((from)-[distance:Distance*]->(to))
	WITH
	[building in nodes(path) | building.lat] as lat,
	[building in nodes(path) | building.lng] as lng,
	REDUCE(totalMinutes = 0, d in distance | totalMinutes + d.cost) as 所要時間
	RETURN lat, lng
	ORDER BY 所要時間
	LIMIT 10;
	`, from, to)

	// Cypherで最短経路を検索
	res, err := session.ReadTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(cypher, nil)

		if err != nil {
			return nil, err
		}

		// neo4jサーバから帰ってきた値を配列に格納
		if result.Next() {
			lat_value, found := result.Record().Get("lat")
			if found {
				lat_array := lat_value.([]interface{})
				for i := 0; i < len(lat_array); i++ {
					lat = append(lat, lat_array[i].(float64))
				}
			}
			lng_value, found := result.Record().Get("lng")
			if found {
				lng_array := lng_value.([]interface{})
				for i := 0; i < len(lng_array); i++ {
					lng = append(lng, lng_array[i].(float64))
				}
			}
		}

		return nil, result.Err()
	})
	if err != nil {
		return nil, nil, err
	}

	println(res)
	return lat, lng, nil
}
