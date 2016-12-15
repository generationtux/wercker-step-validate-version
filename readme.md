# Validate Version

A public step for use with Wercker CI that will validate the version of the build/container.

    - validate-version:
        url: [YOUR_SERVICE_URL]

### Example

Say the Hurdy service has a `/heathz/version?version={WERCKER_GIT_COMMIT}` endpoint.
Add the step to your deployment pipeline and it will send a `GET` request to
that health check endpoint. Any non `2xx` status code will fail the validation
step.

    - gentux/validate-version:
        url: https://hurdy-svc.gurdy.com/healthz/version
