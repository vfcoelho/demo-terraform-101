cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "ami",
      "value": "ami-07d0cf3af28718ef8",
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
