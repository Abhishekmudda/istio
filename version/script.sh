#!/bin/bash
kubectl apply -f deployment1.yml
kubectl apply -f deployment2.yml
kubectl apply -f deployment3.yml

kubectl apply -f service.yml

kubectl apply -f virtualservice.yml
kubectl apply -f gateway.yml
kubectl apply -f destinationrule.yml

kubectl get deploy
kubectl get svc
kubectl get virtualservice
kubectl get gateway
kubectl get destinationrule