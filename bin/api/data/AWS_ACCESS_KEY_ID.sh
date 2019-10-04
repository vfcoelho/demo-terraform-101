cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "AWS_ACCESS_KEY_ID",
      "value": "$AWS_ACCESS_KEY_ID",
      "category": "env",
      "hcl": false,
      "sensitive": true
    },
    "relationships": {
      "workspace": {
        "data": {
          "id": "$TF_WORKSPACE_ID",
          "type": "workspaces"
        }
      }
    }
  }
}
EOF
