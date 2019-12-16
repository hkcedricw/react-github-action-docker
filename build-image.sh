#!/bin/sh
cd app
npm run build
cd ..
docker build . --tag github-action-sample