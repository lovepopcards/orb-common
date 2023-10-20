#!/bin/bash
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
# If for any reason the TO variable is not set, default to "World"
git config --global --unset url.ssh://git@github.com.insteadof || true
git config --global url."https://$GITHUB_TOKEN:x-oauth-basic@github.com".insteadOf "https://github.com" || true