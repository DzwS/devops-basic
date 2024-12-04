#!/bin/bash

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

k3d cluster create -c $SHELL_FOLDER/simple.yaml



# manual import image
# k8s can not connect registry-1.docker.io
docker pull rancher/mirrored-coredns-coredns:1.10.1
docker pull docker.io/rancher/mirrored-pause:3.6
docker pull docker.io/rancher/klipper-helm:v0.8.4-build20240523
docker pull rancher/local-path-provisioner:v0.0.28
docker pull rancher/mirrored-metrics-server:v0.7.0
docker pull rancher/klipper-lb:v0.4.7
docker pull rancher/mirrored-library-traefik:2.10.7
docker pull rancher/mirrored-library-busybox:1.36.1
docker pull docker.io/bitnami/metrics-server:0.7.2-debian-12-r4
k3d image import rancher/mirrored-coredns-coredns:1.10.1 --cluster mycluster
k3d image import docker.io/rancher/mirrored-pause:3.6 --cluster mycluster
k3d image import docker.io/rancher/klipper-helm:v0.8.4-build20240523 --cluster mycluster
k3d image import rancher/local-path-provisioner:v0.0.28 --cluster mycluster
k3d image import rancher/mirrored-metrics-server:v0.7.0 --cluster mycluster
k3d image import rancher/klipper-lb:v0.4.7 --cluster mycluster
k3d image import rancher/mirrored-library-traefik:2.10.7 --cluster mycluster
k3d image import rancher/mirrored-library-busybox:1.36.1 --cluster mycluster
k3d image import docker.io/bitnami/metrics-server:0.7.2-debian-12-r4 --cluster mycluster

# recreate pod
kubectl delete pods --all -n kube-system
sleep 3
kubectl get po -n kube-system


# verify list
# verify coreDNS iamge
docker pull registry.k8s.io/e2e-test-images/agnhost:2.39
k3d image import registry.k8s.io/e2e-test-images/agnhost:2.39 --cluster mycluster

# verify simple service
docker pull nginx:1.14.2
k3d image import nginx:1.14.2 --cluster mycluster

# verify complex applicatoin
docker pull vfarcic/go-demo-2
docker pull mongo:3.3
docker pull mongo:4.0
docker pull cvallance/mongo-k8s-sidecar
docker pull vfarcic/go-demo-5:2.5
k3d image import vfarcic/go-demo-2 --cluster mycluster
k3d image import mongo:3.3 --cluster mycluster
k3d image import mongo:4.0 --cluster mycluster
k3d image import cvallance/mongo-k8s-sidecar --cluster mycluster
k3d image import vfarcic/go-demo-5:2.5 --cluster mycluster









