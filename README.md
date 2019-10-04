# Terraform Intro Demo

Before and after code for a _Terraform Introduction_ class.

## Branches

See the `after` branch for the completed code from the class.

See the `after-byoaws` branch for the completed code that can be run on a student's own AWS account (instead of on the instructor-created AWS account).

## Example Files

All of these files can be renamed without the `-example` postfix and supplied with valid values to simply your workspace configuration.

### `.env.sh-example`

_Leave these values untouched_

```
TF_CLI_CONFIG_FILE=.terraformrc
TF_ORGANIZATION=zx-ventures
```

The `TF_WORKSPACE` variable is the name of the workspace in TF Cloud. It should follow the convention of `demo-terraform-101-` followed by your name.

```
TF_WORKSPACE=demo-terraform-101-jimbo
```
The `TF_WORKSPACE_ID` variable is the name of the workspace in TF Cloud. It will follow the convention of `ws-` followed by a random string. To find out your workspace's ID, you can either look in the website UI or use the API.

```
TF_WORKSPACE_ID=ws-asdlfkjasdasdfasfdsa
```

### `.secrets.sh-example`

- `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are obvious.
- `TF_TOKEN` can be set here if you want to use the pre-defined API commands in `bin/api/`.
- `TF_VAR_private_key` is the SSH private key used to access the app.
- `TF_VAR_public_key` is the SSH public key used to access the app.

### `.terraformrc-example`

This is where you configure your local environment to use the TF Cloud token.

### `demo.auto.tfvars-example`

- `identity` shouold be your name
- `ami` the AWS AMI to use for the app. This is Ubuntu 18 in us-east-1.
- `subnet_id` this is the subnet configured for the demo. It is in us-east-1
- `vpc_security_group_id`  the pre-configured security group for the demo. It is also in us-east-1.

## Bash Scripts

There are a number of bash scripts included in this repo to facilitate the workshop. All of the `bin/api` scripts use [jq](https://stedolan.github.io/jq/manual/). It is recommended to [install jq](https://stedolan.github.io/jq/download/) to use these scripts.

### Generate SSH Key

Run `./bin/util/init_ssh.sh`.
