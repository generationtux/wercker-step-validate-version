if [ -z "$WERCKER_VALIDATE_VERSION_URL" ]
then
    fail 'missing service endpoint to check, please add this to the validate version in wercker.yml'
fi


info "curling this url:"

info "$WERCKER_VALIDATE_VERSION_URL?version=$WERCKER_GIT_COMMIT"

while : ; do
    EXIT_CODE = curl "$WERCKER_VALIDATE_VERSION_URL?version=$WERCKER_GIT_COMMIT" --silent --fail --show-error --output /dev/null && \
    sleep .5

    [[ $EXIT_CODE -ne 0 ]] || break
done
success "$WERCKER_VALIDATE_VERSION_URL is running:\n$WERCKER_GIT_COMMIT"
