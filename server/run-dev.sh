#!/bin/sh
if [ ! -d build ]   # for file "if [-f /home/rama/file]" 
then
  cd ../app
  npm run build
  cp -r build ../server/build
  cd ../server
fi
node server.js