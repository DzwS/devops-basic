# container(roadmap) | container orchestration | setup x | cloud providers | provisioning | config management

## keyword
Core concepts | Cluster | Node | Pod | Namespace
Workload Management | Deployment | ReplicaSet | Job | CronJob
Networking | Service | Ingress | NetworkPolicy
Storage and Configuration | ConfigMap | Secret | Volume | PersistentVolume(PV) and PersistentVolumeClaim(PVC)
Architecture Components | Kubelet | kube-proxy | controller manager
Security and Access Control | role-bases access control(RBAC) | roles and clusterRoles | roleBinding and clusterRolebinding
Scaling and Management | Cluster Autoscaler | Horizontal Pod Autoscaler
Additional features | init containers | sidecar containers | readiness probe | liveness probe | headless service | loadbalancer servicde | coreDNS

## project https://www.youtube.com/watch?v=C_bB1-I7t6Y
project 1: scalable web application
project 2: deploy a self-heading microservice
project 3: database with persistent storage
project 4: CI/CD pipeline with jenkins
project 5: centralized logging with fluented
more important considerations
-- start small: begin basic versions of each project and gradually increase complexity.
-- cloud/local setup: you can use cloud-based kubernetes cluster (AWS EKS, CP GKE,Azure AKS) or local solutions like minikube for experiments
-- Focus on concepts: while tools are important, emphasize understanding core kubernetes resources (Desployment, services, configmaps, secrets, etc.) within each project
## common commands

## relate tool
cluster management |  platform | EKS | kubeadm | GKE | OpenShift | Helm | k3s | minikube
kube route | istio | consul
container runtime | docker | containerd | rkt
infra automation | ansible | terraform | pulumi | argoCD | cloudFormation | kustomize
security | vault
monitoring obervability | fluentd | fluentbit | zabbix | prometheus | ELK


# start command
minikube start --docker-env http_proxy=http://192.168.0.104:7890 \
               --docker-env https_proxy=https://192.168.0.104:7890 \
               --docker-env no_proxy=localhost,127.0.0.1,10.96.0.0/12,192.168.0.0/16 --force --driver=docker
