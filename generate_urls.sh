#!/bin/bash
cat packages.txt | xargs npm install
find node_modules -name "*.js" -type f > urls.txt
