#!/bin/bash


###
###
#  参考文档 https://pgillich.medium.com/setup-lightweight-kubernetes-with-k3s-6a1c57d62217
#  github地址： https://github.com/kubernetes/dashboard
###
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/

helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard


# generate token
# kubectl -n kubernetes-dashboard create token kubernetes-dashboard-kong

# kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443