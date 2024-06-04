#!/bin/bash

kubectl apply -f namespace.yml
kubectl apply -f mongo.yml
kubectl apply -f backend-server.yml
kubectl apply -f client.yml