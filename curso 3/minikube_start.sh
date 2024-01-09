#!/bin/bash

minikube start --ports=30007:30007
minikube addons enable metrics-server
minikube addons enable volumesnapshots
minikube addons enable csi-hostpath-driver
#minikube dashboard

kubectl apply -f ".\configmap.yaml"
kubectl apply -f ".\secret.yaml"
kubectl apply -f ".\volume.yaml"
kubectl apply -f ".\Voll-med.yaml"
kubectl apply -f ".\mysql.yaml"
kubectl apply -f ".\nodeport.yaml"

minikube service nodeport-api --url

# kubectl port-forward service/nodeport-api 30030:30030

# minikube tunnel --bind-address=127.0.0.1 # start load balancer