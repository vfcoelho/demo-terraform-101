private_key=$(/bin/cat .ssh/id_rsa | base64)

/bin/cat <<EOF
{
  "data": {
    "type":"vars",
    "attributes": {
      "key": "TF_VAR_private_key",
      "value": "$private_key",
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
