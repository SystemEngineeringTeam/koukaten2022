#!/bin/bash
set -euC

# EXTENSION_SCRIPTはコンテナが起動するたびにコールされるため、
#!/bin/bash
set -euC

# CSVファイルがなければ何もしない
if [[ "$(ls -1 /import | wc -l)" == "0" ]]; then
    echo "import csv skipped."
    return
fi

# データを全削除
echo "delete database started."
rm -rf /var/lib/neo4j/data/databases
rm -rf /var/lib/neo4j/data/transactions
echo "delete database finished."

# CSVインポート
echo "importing csv started."
/var/lib/neo4j/bin/neo4j-admin import \
    --id-type=INTEGER \
    --nodes="/import/building.csv,/import/point.csv" \
    --relationships="/import/route.csv
echo "importing csv finished."
