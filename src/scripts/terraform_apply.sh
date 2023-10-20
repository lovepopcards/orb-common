#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
# If for any reason the TO variable is not set, default to "World"
GIT_SHA=$(git rev-parse --short HEAD) terraform apply \
 <<parameters.additional-terraform-arguments>> -var "container_version=${CIRCLE_BRANCH}.${GIT_SHA}" -var "vpc_id=${AWS_VPC_ID}" \
-var "env=${AWS_ENV}" -var "account=${AWS_ACCOUNT_ID}" -var "aws_region=us-west-2" -auto-approve terraform/