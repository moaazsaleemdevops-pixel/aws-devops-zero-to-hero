#!/bin/bash
set -e

docker pull moaazsaleem/simple-python-flask-app:latest

docker rm -f simple-python-flask-app 2>/dev/null || true

docker run -d \
  --name simple-python-flask-app \
  -p 5000:5000 \
  moaazsaleem/simple-python-flask-app:latest
