#!/bin/bash
FILE=${BCK_FILESYSTEM_PATH}
DIR=$(dirname "${BCK_FILESYSTEM_PATH}")
TIME=${BCK_TIME_INTERVAL:-3600}

echo "filesystem: ${BCK_FILESYSTEM_PATH}"
echo "dir: ${DIR}"
echo "time: ${BCK_TIME_INTERVAL}"

if [ ! -d ${DIR} ]; then
  echo "folder ${DIR} does not exists"
  mkdir -p $DIR
  chmod 777 $DIR
fi

# TODO:gstutil ls to check if file exists on cloud
echo "download file from gsutil"
gsutil cp ${BCK_GSUTILS_PATH} ${DIR}
chmod 600 ${FILE}

echo "Checking ${FILE} with time interval ${TIME}"
echo "Press [CTRL+C] to stop ..."
while :
do
  sleep ${TIME}
  echo "checking file ${FILE}."
  if [ -f ${FILE} ]; then
    echo "upload file to gsutil"
    gsutil rsync -c ${FILE} ${BCK_GSUTILS_PATH}
  fi
done
