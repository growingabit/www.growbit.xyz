# www.growbit.xyz
www.growbit.xyz

# run locally
`cd html5up-stellar && python -m SimpleHTTPServer 8000`
point browser to http://localhost:8000

# configure gs bucket for serving on www
`gsutil -m defacl ch -r -u AllUsers:R gs://www.growbit.xyz`
`gsutil web set -m index.html -e index.html gs://www.growbit.xyz`