#!/bin/bash

source .env.sh
source .secrets.sh

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  https://app.terraform.io/api/v2/organizations/$TF_ORGANIZATION/workspaces \
  | jq '.data[] | select(.attributes.name == $ENV.TF_WORKSPACE) | .id'
