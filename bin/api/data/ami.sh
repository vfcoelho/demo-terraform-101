cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "ami",
      "value": "$TF_VAR_ami",
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
