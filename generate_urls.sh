#!/bin/bash
cat packages.txt | xargs npm install
find node_modules -name "*.js" -type f > urls.txt
cat urls.txt| gzip > urls.txt.gz
brotli urls.txt
URLS=`wc -l urls.txt |awk '{print $1}'`
GZIP_SIZE=`ls -l urls.txt.gz|awk '{print $5}'`
BR_SIZE=`ls -l urls.txt.br|awk '{print $5}'`
GZIP_RATIO=`bc <<< "scale=2;$GZIP_SIZE / $URLS"`
BR_RATIO=`bc <<< "scale=2;$BR_SIZE / $URLS"`


echo "GZIP is $GZIP_RATIO bytes per URL"
echo "Brotli is $BR_RATIO bytes per URL"

