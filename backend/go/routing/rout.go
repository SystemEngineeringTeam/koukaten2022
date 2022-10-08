package routing

import (
	"encoding/json"
	"fmt"
	"os"

	"github.com/joho/godotenv"
	"github.com/neo4j/neo4j-go-driver/neo4j"
)

type Coordinate struct {
	Lat float64 `json:"lat"`
	Lng float64 `json:"lng"`
}

func GetCoordinate(uri, username, password, from, to string) ([]float64, []float64, error) {
	configForNeo4j4 := func(conf *neo4j.Config) { conf.Encrypted = false }
	driver, err := neo4j.NewDriver(uri, neo4j.BasicAuth(username, password, ""), configForNeo4j4)
	if err != nil {
		return nil, nil, err
	}
	defer driver.Close()
	sessionConfig := neo4j.SessionConfig{AccessMode: neo4j.AccessModeRead, DatabaseName: "neo4j"}
	session, err := driver.NewSession(sessionConfig)
	if err != nil {
		return nil, nil, err
	}
	defer session.Close()

	var lat []float64
	var lng []float64

	res, err := session.ReadTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(
			`
			MATCH (start:Point {point_name:$from}), (finish:Point {point_name:$to})
			CALL gds.shortestPath.dijkstra.stream('myGraph', {
    			sourceNode: id(start),
    			targetNode: id(finish),
    			relationshipWeightProperty: 'cost'
			})
			YIELD index, sourceNode, targetNode, totalCost, nodeIds
			RETURN
    			[nodeId IN nodeIds | gds.util.asNode(nodeId).lat] AS lat,
    			[nodeId IN nodeIds | gds.util.asNode(nodeId).lng] AS lng
			`, map[string]interface{}{
				"from": from, "to": to,
			})
		if err != nil {
			return nil, err
		}

		for result.Next() {
			value, found := result.Record().Get("lat")
			if found {
				// fmt.Println(value)
				s := value.([]interface{})
				for i := 0; i < len(s); i++ {
					lat = append(lat, s[i].(float64))
				}
			}
			val, found := result.Record().Get("lng")
			if found {
				ss := val.([]interface{})
				for i := 0; i < len(ss); i++ {
					lng = append(lng, ss[i].(float64))
				}
			}
		}
		if err = result.Err(); err != nil {
			return nil, err
		}
		return "OK", nil
	})
	if err != nil {
		return nil, nil, err
	}

	println(res.(string))
	return lat, lng, nil
}

func Routing(this_lat, this_lng float64, from, to string) []byte {
	err := godotenv.Load(".env")
	if err != nil {
		fmt.Printf("can't read: %v", err)
	}

	uri := os.Getenv("NEO4J_URI")
	username := os.Getenv("NEO4J_USERNAME")
	pass := os.Getenv("NEO4J_PASS")

	//検索用のグラフを作成（起動時に一度のみ動作させる）
	// err := start_up("bolt://localhost:57687", "neo4j", "admin")
	// if err != nil {
	// 	panic(err)
	// }

	//出発地点から目的地までの各ポイントの座標を取得
	lat, lng, err := GetCoordinate(uri, username, pass, "10号館", "4号館")
	if err != nil {
		panic(err)
	}
	//構造体の作成
	var co []Coordinate
	for i := 0; i < len(lat); i++ {
		co = append(co, Coordinate{lat[i], lng[i]})
	}

	fmt.Println(lat)
	// fmt.Println(lng)
	// fmt.Println(co)
	coordinate, _ := json.Marshal(co)
	fmt.Println(string(coordinate))
	return coordinate
}
