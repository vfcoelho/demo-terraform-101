cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "vpc_security_group_id",
      "value": "sg-0c280b01eeb30aa2d",
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
