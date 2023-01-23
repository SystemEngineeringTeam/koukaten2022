# 愛工大案内する蔵
## コマンド説明

### Dockerコンテナの起動方法
<br />
イメージを作成

```
docker compose build
```
コンテナを立ち上げる
```
docker compose up -d
```

<br />

### goファイルの実行方法
<br />

koukaten2022_GOのコンテナに入る
```
docker exec -it koukaten2022_GO ash
```
cmdディレクトリに入る

```
cd cmd
```
main.goを実行
```
go run main.go
```
<br />

### mysqlのデータを確認する方法
<br />

koukaten2022_DBのコンテナに入る
```
docker exec -it koukaten2022_DB /bin/bash
```
mysqlにログイン(パスワードはadmin)
```
mysql -u root -p
```
DBがあるかを確認
```
SHOW databases;
```

<br />

### neo4jコンテナに接続する方法
<br />

neo4jコンテナに入る
```
docker exec -it koukaten2022_NEO4J /bin/bash
```

コンテナに割り振られたIPアドレスを確認する
```
cat /etc/hosts | awk 'END{print $1}' | sed -e 's/[0-9]\+$/1/g'
```

neo4j_handler.goの15行目に確認したIPアドレスを書き換える
```
driver, err := neo4j.NewDriver("neo4j://(ここにIPアドレスを入れる):57687", neo4j.BasicAuth(username, pass, ""))
```
