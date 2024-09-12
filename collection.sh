#!/bin/bash

NEODB_ACCESS_TOKEN=""
COLLECTION_ID=""

# 读取 imdb.txt 文件中的每一行
while IFS= read -r uuid; do
  # 发起 POST 请求
  curl -X 'POST' \
    'https://neodb.social/api/me/collection/${COLLECTION_ID}/item/' \
    -H 'accept: application/json' \
    -H 'Authorization: Bearer ${NEODB_ACCESS_TOKEN}' \
    -H 'Content-Type: application/json' \
    -d '{
    "item_uuid": "'"$uuid"'",
    "note": ""
  }'
done