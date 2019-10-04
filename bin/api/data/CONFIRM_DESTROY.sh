cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "CONFIRM_DESTROY",
      "value": "1",
      "category": "env",
      "hcl": false,
      "sensitive": false
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
