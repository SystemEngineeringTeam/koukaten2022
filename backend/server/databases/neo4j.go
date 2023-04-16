package databases

import (
	"log"

	"github.com/karasuneo/aikodai-annai-suru-zo/backend/config"
	"github.com/neo4j/neo4j-go-driver/v4/neo4j"
)

func GetSession() neo4j.Session {
	n := config.GetNeo4jConfig()
	dr, err := neo4j.NewDriver(n.GetString("neo4j.uri"), neo4j.BasicAuth(n.GetString("neo4j.user"), n.GetString("neo4j.password"), ""))
	defer dr.Close()
	if err != nil {
		log.Fatal(err)
	}
	ses := dr.NewSession(neo4j.SessionConfig{AccessMode: neo4j.AccessModeRead})
	return ses
}
