#!/bin/bash

source .env.sh
source .secrets.sh

TV_VARS=$(curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
"https://app.terraform.io/api/v2/vars?filter%5Borganization%5D%5Bname%5D=$TF_ORGANIZATION&filter%5Bworkspace%5D%5Bname%5D=$TF_WORKSPACE" \
  | jq '.data[].id' \
  | cut -d'"' -f2 \
  | xargs echo)

for tf_var in $TV_VARS; do
  echo "DELETING: $tf_var"
  curl \
    --header "Authorization: Bearer $TF_TOKEN" \
    --header "Content-Type: application/vnd.api+json" \
    --request DELETE \
    https://app.terraform.io/api/v2/vars/$tf_var \
    | jq .
done
