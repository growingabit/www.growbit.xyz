#!/bin/bash

set -e

cd html5up-stellar && \
    gsutil -m \
    -h "Cache-Control:public, max-age=3600" \
    cp -R . gs://www.growbit.xyz/

gsutil -m acl ch -r -u AllUsers:R gs://www.growbit.xyz

# gsutil web set -m index.html -e index.html gs://www.growbit.xyz

gcloud compute url-maps invalidate-cdn-cache growingabit-io --path "/*"
