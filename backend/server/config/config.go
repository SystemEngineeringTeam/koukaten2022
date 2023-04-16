package config

import (
	"github.com/spf13/viper"
)

var m, n, l *viper.Viper

func init() {
	m = viper.New()
	n = viper.New()
	l =  viper.New()
	m.SetConfigType("yaml")
	l.SetConfigType("yaml")
	n.SetConfigType("yaml")
	m.SetConfigName("mysql")
	n.SetConfigName("neo4j")
	l.SetConfigName("log")
	m.AddConfigPath("config/environments/")
	n.AddConfigPath("config/environments/")
	l.AddConfigPath("config/environments/")
}

func GetMysqlConfig() *viper.Viper {
	if err := m.ReadInConfig(); err != nil {
		return nil
	}
	return m
}

func GetNeo4jConfig() *viper.Viper {
	if err := n.ReadInConfig(); err != nil {
		return nil
	}
	return n
}

func GetLogConfig() *viper.Viper {
	if err := l.ReadInConfig(); err != nil {
		return nil
	}
	return l
}
