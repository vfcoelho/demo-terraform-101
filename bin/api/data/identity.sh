cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "identity",
      "value": "jimbo",
      "category": "terraform",
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
