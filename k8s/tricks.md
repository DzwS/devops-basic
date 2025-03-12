1. restart pods withoud deleting them
kubectl rollout restart deployment <deployment-name> -n <namepsace>

2. quickly access a pod's shell without knowing the exact name
kubectl exec -ti $(kubectl get pods -o=jsonpath='{.items[0].metadata.name}') -- /bin/sh

3. run a one-off debugging pod without creating a yaml file
kubectl run debug-pod --rm -it --image=busybox -- /bin/sh
kubectl debug -it ephemeral-demo --image=busybox:1.28 --target=ephemeral-demo
不同container之间共享了网络命名空间，IPC（进程间通信）命名空间，UTS命令空间，存储卷



4. get real-time resource usage of pods
kubectl top pod -n <namespace>


5. find out why a pod is stuck in pending or crashloopbackoff
kubectl describe pod <pod-name> -n <namespace>

6. view all api resources available in your cluster
kubectl api-resources

7. access a kubernetes cluster without kubectl installed
ssh -L 8001:127.0.0.1 user@remote-server
kubectl proxy

8. debug network traffic between pods
kubect exec -ti <pod-name> -- tcpdump -i eth0 -nn -s 0 -w /tmp/capture.pcap
kubectl cp <pod-name>:/tmp/capture.pcap ./capture.pcap

9. get a list of unused persistent volume claims(PVCs)
kubectl get pvc --all-namespaces | grep -v $(kubectl get pods --all-namespaces -o jsonpath="{.items[*].spec.volumes[*].persistentVolumeClaim.claimName}" | tr ' ' '\n' | sort -u)

10. quickly port-forward a service to your local machine
kubectl port-foward svc/<service-name> 8080:80 -n <namespace>

11. find pods running on a specific node
kubectl get pods --all-namespaces -o wide | grep <node-name>

12. delete a stuck pod immediately
kubectl delete pod <pod-name> --grace-period=0 --force -n <namespace>

13. get a pod's external IP directly
kubectl get svc <service-name> -o jsonpath='{.status.loadbalancer.ingress[0].ip}'

14. apply changes without typing -f <filename>
kubectl apply -k .

15. view the complete YAML of a running resource
kubectl get pod <pod-name> -o yaml
