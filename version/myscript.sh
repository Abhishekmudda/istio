#!/bin/bash
cp app1.py app.py
docker build -t istio-image1:v1 .
rm app.py
cp app2.py app.py
docker build -t istio-image2:v2 .
rm app.py
cp app3.py app.py
docker build -t istio-image3:v3 .
rm app.py
kubectl apply -f deployment1.yml
kubectl apply -f deployment2.yml
kubectl apply -f deployment3.yml

kubectl apply -f service.yml

kubectl apply -f virtualservice.yml
kubectl apply -f gateway.yml
kubectl apply -f destinationrule.yml


docker images

kubectl get deploy
kubectl get svc
kubectl get virtualservice
kubectl get gateway
kubectl get destinationrule