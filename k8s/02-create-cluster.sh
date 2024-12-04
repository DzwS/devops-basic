#!/bin/bash

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

k3d cluster create -c $SHELL_FOLDER/simple.yaml



# manual import image
# k8s can not connect registry-1.docker.io
docker pull registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.4
k3d image import registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.4 --cluster mycluster



# create ingress
# 创建对应的命名空间
kubectl create ns ingress-nginx


kubectl get node
