#!/bin/bash
kubectl create namespace cicd
kubectl apply -f manifests/jenkins-deployment.yaml
kubectl apply -f manifests/jenkins-service.yaml
kubectl -n cicd get pods
