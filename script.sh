#!/bin/bash

cd kiali
kubectl apply -f virtualservice.yml
kubectl apply -f gateway.yml
kubectl apply -f destinationrule.yml
cd ..

cd grafana
kubectl apply -f virtualservice.yml
kubectl apply -f gateway.yml
kubectl apply -f destinationrule.yml
cd ..

cd prometheus
kubectl apply -f virtualservice.yml
kubectl apply -f gateway.yml
kubectl apply -f destinationrule.yml
cd ..


kubectl get virtualservice
kubectl get gateway
kubectl get destinationrule