#!/bin/bash
docker pull moaazsaleem/simple-python-flask-app:latest
docker run -d --name simple-python-flask-app -p 5000:5000 moaazsaleem/simple-python-flask-app:latest
