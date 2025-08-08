#!/bin/bash
kubectl create namespace cicd || true
kubectl apply -f manifests/ansible-deployment.yaml
kubectl -n cicd get pods
