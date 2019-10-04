cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "subnet_id",
      "value": "subnet-0ee95f34e3e3c4052",
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
