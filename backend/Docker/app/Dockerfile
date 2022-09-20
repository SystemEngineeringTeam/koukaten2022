FROM golang:1.17.7-alpine
RUN apk update && apk add git
# RUN go get github.com/cosmtrek/air@v1.29.0
# RUN mkdir -p /go/app
# WORKDIR /go/app

# CMD ["air", "-c", ".air.toml"]

# # COPY startup.sh /startup.sh
# # RUN chmod 744 /startup.sh
# # CMD ["/startup.sh"]

# COPY GO/main.go /go/app/main.go

# COPY ./go.mod /go/app/main.go

# RUN go mod init server \
#   && go mod tidy \
#   && go build

# CMD ["go", "run", "main.go"]

ENV GOENV_ROOT=/go/
ENV PATH=$GOENV_ROOT/bin:$PATH

RUN mkdir /app
WORKDIR /app

RUN go get github.com/labstack/echo/v4
RUN go get github.com/labstack/echo/v4/middleware
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm
RUN go get github.com/joho/godotenv

COPY ../../backend/GO/main.go /app/main.go
COPY ../../../frontend/dist/ /app/dist/
COPY ../../../frontend/dist/ait-map.html /app/dist/ait-map.html

CMD ["go", "run", "main.go"]