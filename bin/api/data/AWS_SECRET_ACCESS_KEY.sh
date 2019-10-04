cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "AWS_SECRET_ACCESS_KEY",
      "value": "$AWS_SECRET_ACCESS_KEY",
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
