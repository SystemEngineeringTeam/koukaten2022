package main

import (
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/config"
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/router"
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/utils"
)

func main() {
	l := config.GetLogConfig()
	utils.LoggingSettings(l.GetString("log.filename"))
	router.Init()
}
