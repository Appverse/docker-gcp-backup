# docker-gcp-backup

## Requirements

* GCP devstorage.read_write permission

## Env Variables
* `BCK_FILESYSTEM_PATH=/tmp/file.json` local file or path
* `BCK_GSUTILS_PATH=gs://uspto-pair/applications/file.json` google storage bucket destination
* `BCK_TIME_INTERVAL=300` (in seconds) time interval to check for backups

## Run
      docker run -d --name gcp-backup -e BCK_FILESYSTEM_PATH=/tmp/file.json -e BCK_GSUTILS_PATH=gs://uspto-pair/applications/file.json appverse/gcp-backup
