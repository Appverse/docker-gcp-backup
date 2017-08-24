FROM google/cloud-sdk:alpine
LABEL maintainer "Appverse <info@appverse.org>"
COPY backup.sh .
ENTRYPOINT ./backup.sh
