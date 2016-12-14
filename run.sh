#!/bin/bash

if [ -z "$WERCKER_VALIDATE_VERSION_URL" ]
then
    fail 'missing service endpoint to check, please add this to the validate version in wercker.yml'
fi

curl "$WERCKER_VALIDATE_VERSION_URL?version=$WERCKER_VALIDATE_VERSION_VERSION" --fail && success "container matches the current app version"