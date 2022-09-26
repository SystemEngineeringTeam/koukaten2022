FROM golang:1.17.7-alpine
RUN apk update && apk add git
RUN mkdir -p /go/app
WORKDIR /go/app

RUN go get github.com/labstack/echo/v4
RUN go get github.com/labstack/echo/v4/middleware
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm
RUN go get github.com/joho/godotenv

CMD ["go", "run", "main.go"]

# FROM golang:1.17.7-alpine
# RUN apk update && apk add git
# RUN go get github.com/cosmtrek/air@v1.29.0
# RUN mkdir -p /go/app
# WORKDIR /go/app

# CMD ["air", "-c", ".air.toml"]