# docker-gcp-backup

## Requirements

* GCP devstorage.read_write permission

## Env Variables
* BCK_FILESYSTEM_PATH=/tmp/file.json
* BCK_GSUTILS_PATH=gs://uspto-pair/applications/file.json
* BCK_TIME_INTERVAL=3600 (in seconds)
## Run

  docker run -d --name gcp-backup -e BCK_FILESYSTEM_PATH=/tmp/file.json -e BCK_GSUTILS_PATH=gs://uspto-pair/applications/file.json appverse/gcp-backup
