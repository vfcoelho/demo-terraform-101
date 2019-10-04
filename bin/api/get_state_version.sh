#!/bin/bash

source .env.sh
source .secrets.sh

TF_CURRENT_STATE_VERSION_ID=wsout-oQQaMj385q6ZS2DL

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  https://app.terraform.io/api/v2/state-version-outputs/$TF_CURRENT_STATE_VERSION_ID \
  | jq .data.attributes.value
  # | jq .data.attributes.value \
  # | cut -d'"' -f2 \
  # | base64 --decode \
  # | gpg
