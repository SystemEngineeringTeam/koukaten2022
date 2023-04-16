package models

import (
	"fmt"
	"log"

	"github.com/karasuneo/aikodai-annai-suru-zo/backend/databases"
	"github.com/neo4j/neo4j-go-driver/v4/neo4j"
)

type Coordinate struct {
	Latitude  float64 `json:"latitude"`
	Longitude float64 `json:"longitude"`
}

var c []*Coordinate

func FindCoordinate(fr, to string) []*Coordinate {
	ses := databases.GetSession()
	defer ses.Close()
	cyp := fmt.Sprintf(`
		MATCH (from:Building {point_name: "%s"}), (to:Building {point_name: "%s"}), 
			path=allShortestPaths ((from)-[distance:Distance*]->(to))
		WITH
			[building in nodes(path) | building.lat] as lat,
			[building in nodes(path) | building.lng] as lng,
		REDUCE(totalMinutes = 0, d in distance | totalMinutes + d.cost) as 所要時間
		RETURN lat, lng
		ORDER BY 所要時間
		LIMIT 10;
	`, fr, to)

	_, err := ses.ReadTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(cyp, nil)
		if err != nil {
			return nil, err
		}
		if result.Next() {
			lat, _ := result.Record().Get("lat")
			lng, _ := result.Record().Get("lng")
			latAr := lat.([]interface{})
			lngAr := lng.([]interface{})

			for i := 0; i < len(latAr); i++ {
				c = append(c, &Coordinate{latAr[i].(float64), lngAr[i].(float64)})
			}
		}
		return nil, result.Err()
	})
	if err != nil {
		log.Fatal(err)
	}
	return c
}
