#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
# If for any reason the TO variable is not set, default to "World"
terraform init -input=false -backend-config="region=us-west-2" -backend-config="bucket=lovepop-terraform" \
-backend-config="key=${AWS_ACCOUNT_ID}/remote_config/<<parameters.remote-config-key>>" -reconfigure -backend=true terraform/