#!/bin/sh

rm -rf ./down
wget --no-host-directories --force-directories https://www.isdt.co/down/firmwares/firmwareDownloadList.json
jq -r '.downloadList[].firmwareUrl, .downloadList[].img' ./down/firmwares/firmwareDownloadList.json | wget --no-host-directories --force-directories --input-file=-
