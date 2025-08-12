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


kubectl get virtualservice -n istio-system
kubectl get gateway -n istio-system
kubectl get destinationrule -n istio-system