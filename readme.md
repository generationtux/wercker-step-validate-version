# Validate Version

A public step for use with Wercker CI that will validate the version of the build/container.


    - validate-version:
        url: [YOUR_SERVICE_URL]
        version: [YOUR_GIT_COMMIT_HASH]