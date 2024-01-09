#!/bin/bash

kubectl delete statefulset mysql
kubectl delete pod mysql-0
kubectl delete cronjob backup-mysql
kubectl delete service mysql
kubectl delete service nodeport-api
kubectl delete cm dados
kubectl delete secret senhas
kubectl delete deployment vollmed
kubectl delete hpa vollmed-hpa
kubectl delete pv volume-mysql
kubectl delete pvc volume-mysql
minikube stop