#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
# If for any reason the TO variable is not set, default to "World"
AWS_ECR_PWD=`aws ecr get-login-password --region us-west-2`
docker login --username AWS --password "${AWS_ECR_PWD}" "${AWS_ACCOUNT_ID}".dkr.ecr.us-west-2.amazonaws.com