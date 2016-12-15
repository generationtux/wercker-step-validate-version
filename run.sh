if [ -z "$WERCKER_VALIDATE_VERSION_URL" ]
then
    fail 'missing service endpoint to check, please add this to the validate version in wercker.yml'
fi

info "$WERCKER_VALIDATE_VERSION_URL?version=$WERCKER_GIT_COMMIT"

curl "$WERCKER_VALIDATE_VERSION_URL?version=$WERCKER_GIT_COMMIT" --fail && success "container matches the current app version"
