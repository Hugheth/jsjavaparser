# npm install pegjs umd
pegjs -e "var parser" src/Java.1.7.pegjs lib/javaparser7.js
pegjs src/Java.1.7.pegjs lib/javaparser7.node.js 
# combine and output
cat src/workerHeader.jsbit lib/javaparser7.js src/workerFooter.jsbit > lib/JavaParserWorker.js