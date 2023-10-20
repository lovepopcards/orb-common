#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
# If for any reason the TO variable is not set, default to "World"
IMAGE_REPO="${AWS_ACCOUNT_ID}.dkr.ecr.us-west-2.amazonaws.com/<<parameters.image-repo>>"
GIT_SHA="$(git rev-parse --short HEAD)"
docker tag out ${IMAGE_REPO}:<<parameters.image-tag>>
docker push ${IMAGE_REPO}:<<parameters.image-tag>>