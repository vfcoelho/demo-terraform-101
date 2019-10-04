cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "vpc_security_group_id",
      "value": "$TF_VAR_vpc_security_group_id",
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
