# 愛工大案内する蔵

## システム動作方法

### フロントエンド（Next.js）

### 環境
- MacOS: Venture(13.0.1)
- Node.js: v18.12.1
- npm: 9.2.0
- 使用しているモジュールのバージョンは package.json を参照

### 動作方法

1. モジュールのインストール

```bash
cd frontend

npm i
```

2. プロジェクト実行

```bash
npm start
```

3. ブラウザを開き、http://localhost:3000/map に接続

### バックエンド（Gin）

### 環境
- MacOS: Venture(13.0.1)
- docker: Docker Desktop 4.15.0 (93002)

#### 動作方法

1. Docker イメージを取得しコンテナを立てる

```bash
docker compose build

docker compose up -d
```

2. Neo4j コンテナに入り、接続されている IP アドレスを確認

```bash
docker exec -it koukaten2022_NEO4J /bin/bash

cat /etc/hosts | awk 'END{print $1}' | sed -e 's/[0-9]\+$/1/g'
```

3. 2 で確認できたアドレスを backend/go/lib/neo4j_handler.go の 15 行目に貼り付ける

```golang
driver, err := neo4j.NewDriver("neo4j://(ここにIPアドレスを入れる):57687", neo4j.BasicAuth(username, pass, ""))
```

4. Go コンテナに入る

```bash
docker exec -it koukaten2022_GO ash
```

5. cmd フォルダに移動して main.go を実行して API サーバを立ち上げる

```bash
cd cmd

go run main.go
```
