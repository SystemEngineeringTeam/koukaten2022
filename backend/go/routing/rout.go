package routing

import (
	"github.com/neo4j/neo4j-go-driver/v4/neo4j"
)

func Routing(uri, username, password string) (neo4j.ResultSummary, error) {
	driver, err := neo4j.NewDriver(uri, neo4j.BasicAuth(username, password, ""))
	if err != nil {
		return nil, err
	}
	defer driver.Close()

	session := driver.NewSession(neo4j.SessionConfig{AccessMode: neo4j.AccessModeWrite})
	defer session.Close()

	greeting, err := session.WriteTransaction(func(transaction neo4j.Transaction) (interface{}, error) {
		result, err := transaction.Run(
			"MATCH (from:Point{point_name:$pName})"+"MATCH (to:Building{building_name:$bName})"+"MATCH path=((from)-[:route*]->(to))"+"RETURN path",
			map[string]interface{}{"pName": '1', "bName": "99"})
		if err != nil {
			return nil, err
		}

		if result.Next() {
			return result.Record().Values[0], nil
		}

		return result.Consume()
	})
	if err != nil {
		return nil, err
	}

	return greeting.(neo4j.ResultSummary), nil
}

// func routstart() {
// 	trunsctionResult, err := routing("bolt://localhost:57687", "neo4j", "admin")
// 	fmt.Println(trunsctionResult, err)
// }
