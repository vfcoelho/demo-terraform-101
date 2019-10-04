#!/bin/bash

source .env.sh
source .secrets.sh

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
"https://app.terraform.io/api/v2/vars?filter%5Borganization%5D%5Bname%5D=$TF_ORGANIZATION&filter%5Bworkspace%5D%5Bname%5D=$TF_WORKSPACE" \
  | jq '.data[].id' \
  | cut -d'"' -f2 \
  | xargs echo
