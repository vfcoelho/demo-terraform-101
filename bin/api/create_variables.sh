#!/bin/bash

source .env.sh
source .secrets.sh

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/ami.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/identity.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/subnet_id.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/vpc_security_group_id.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/CONFIRM_DESTROY.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/AWS_ACCESS_KEY_ID.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/AWS_SECRET_ACCESS_KEY.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/TF_VAR_private_key.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$(source bin/api/data/TF_VAR_public_key.sh)" \
  https://app.terraform.io/api/v2/vars \
  | jq .
