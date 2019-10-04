cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "subnet_id",
      "value": "$TF_VAR_subnet_id",
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
