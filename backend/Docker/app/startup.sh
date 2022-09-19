#!/bin/sh

COMMAND = "air -c .air.toml"
COMMAND2 = "/bin/sh -c go run ../../GO/main.go"

eval ${COMMAND}
eval ${COMMAND2}