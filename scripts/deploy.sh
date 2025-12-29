#!/usr/bin/env bash
set -e

kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/mysql/
kubectl apply -f kubernetes/petclinic/

kubectl get pods -n petclinic-dev
kubectl get svc -n petclinic-dev
kubectl get pvc -n petclinic-dev
