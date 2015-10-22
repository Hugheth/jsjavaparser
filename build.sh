#!/bin/bash

set -o errexit

npm install
./node_modules/pegjs/bin/pegjs  -e "var parser" src/Java.1.7.pegjs lib/javaparser7.js
./node_modules/pegjs/bin/pegjs  src/Java.1.7.pegjs lib/javaparser7.node.js
# combine and output
cat src/workerHeader.jsbit lib/javaparser7.js src/workerFooter.jsbit > lib/JavaParserWorker.js
