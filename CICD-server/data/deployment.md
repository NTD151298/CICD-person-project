# kubectl command
kubectl get node -o wide
kubectl get pod -o wide
kubectl get pod --show-labels 
kubectl get deployment -o wide
kubectl get replicasets -o wide

# kubectl deployment command
kubectl create deployment nginx-duong1-deployment --image=nginx:alpine
kubectl create deployment mongo-duong1-deployment --image=mongo

# the diffrent in the tags
pod:            nginx-duong1-deployment-df789868f-zlpfn
replicasets:    nginx-duong1-deployment-df789868f
deployment:     nginx-duong1-deployment 

# change the deployment.yaml file
kubectl edit deployment nginx-duong1-deployment (open note file for us)

# basic command to get resources
kubectl logs pod-name
kubectl describe pod pod-name
kubectl exec -it pod-name -- bin/bash

# destroy deployment pod
kubectl delete deployment mongo-duong1-deployment 
kubectl delete deployment nginx-duong1-deployment 



