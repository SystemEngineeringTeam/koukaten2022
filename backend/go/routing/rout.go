package routing

import (
	"encoding/json"

	"github.com/neo4j/neo4j-go-driver/neo4j"
)

type Coordinate struct {
	Lat float64 `json:"lat"`
	Lng float64 `json:"lng"`
}

func GetCoordinate(uri, username, password string) ([]float64, []float64, error) {
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
	results, err := session.ReadTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(
			`
			MATCH (:Point{point_name:$from})-[:route*]->(test:Point)-[:route*]->(:Point{point_name:$to})
			RETURN test.lat as lat
			`, map[string]interface{}{
				"from": "1", "to": "4",
			})
		if err != nil {
			return nil, err
		}
		// fmt.Println(result)
		var lat []float64

		for result.Next() {
			value, found := result.Record().Get("lat")
			if found {
				lat = append(lat, value.(float64))
			}
		}
		if err = result.Err(); err != nil {
			return nil, err
		}
		return lat, nil
	})
	if err != nil {
		return nil, nil, err
	}
	res, err := session.ReadTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(
			`
			MATCH (:Point{point_name:$from})-[:route*]->(test:Point)-[:route*]->(:Point{point_name:$to})
			RETURN test.lng as lng
			`, map[string]interface{}{
				"from": "1", "to": "4",
			})
		if err != nil {
			return nil, err
		}
		// fmt.Println(result)
		var lng []float64

		for result.Next() {
			value, found := result.Record().Get("lng")
			if found {
				lng = append(lng, value.(float64))
			}
		}
		if err = result.Err(); err != nil {
			return nil, err
		}
		return lng, nil
	})
	if err != nil {
		return nil, nil, err
	}
	return results.([]float64), res.([]float64), err
}

func routing(this_lat, this_lng float64) []byte {
	lat, lng, err := GetCoordinate("bolt://localhost:57687", "neo4j", "admin")
	if err != nil {
		panic(err)
	}
	co := []Coordinate{
		{this_lat, this_lng},
	}
	for i := 0; i < len(lat); i++ {
		co = append(co, Coordinate{lat[i], lng[i]})
	}
	// fmt.Println(lat)
	// fmt.Println(lng)
	// fmt.Println(co)
	coordinate, _ := json.Marshal(co)
	return coordinate
}
