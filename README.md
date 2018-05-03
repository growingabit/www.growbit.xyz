# www.growbit.xyz
[![Build Status](https://travis-ci.org/growingabit/www.growbit.xyz.svg?branch=master)](https://travis-ci.org/growingabit/www.growbit.xyz)

# run locally
`cd html5up-stellar && python -m SimpleHTTPServer 8000`

and browse to http://localhost:8000

# configure gs bucket for serving on www
used only for the first configuration

`gsutil -m defacl ch -r -u AllUsers:R gs://www.growbit.xyz`

`gsutil web set -m index.html -e index.html gs://www.growbit.xyz`