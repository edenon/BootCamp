  261  sudo apt update
  262  sudo apt upgrade
  399  sudo snap install microk8s --classic
  404  microk8s status --wait-ready
  405  sudo usermod -a -G microk8s esteban
  406  sudo chown -R esteban ~/.kube
  407  microk8s status --wait-ready
  412  microk8s status --wait-ready
  418  minikube version
  419  microk8s kubectl get all --all-namespaces
  420  microk8s kubectl get nodes
  421  microk8s kubectl get svc
  427  microk8s dashboard-proxy
  440  microk8s kubectl get pods
  463  alias kubectl='microk8s kubectl'
  497  vim .bash_aliases
  
  502  kubectl get all --all-namespaces
  
  598  kubectl get services
  599  kubectl delete pod podpepe
  600  kubectl get services
  601  kubectl expose pod podpepe
  602  kubectl expose pod
  603  kubectl get services
  604  kubectl delete service
  605  kubectl delete service podpepe
  606  kubectl get services
  607  kubectl get pods
  608  kubectl run podpepe --image=sotobotero/udemy-devops:0.0.1 --port=80
  609  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80
  610  kubectl get services
  611  kubectl describe services
  612  kubectl get services
  613  kubectl service podpepe
  614  minik8s service podpepe
  615  microk8s service podpepe
  616  microk8s kubectl get nodes -o wide
  617  microk8s kubectl get service podpepe
  618  microk8s kubectl get service podpepe
  619  microk8s kubectl service podpepe
  620  microk8s kubectl get ep
  621  microk8s kubectl get service podpepe
  622  curl http://localhost:8080
  623  curl http://192.168.73.128:8080
  624  curl http://10.152.183.80:8080
  625  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.128
  626  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.128
  627  minik8s delete service podpepe
  628  kubctl delete service podpepe
  629  kubectl delete service podpepe
  630  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.128
  631  kubectl pods
  632  kubectl get pods
  633  microk8s kubectl get nodes -o wide
  634  microk8s enable dns metallb
  635  microk8s kubectl get pods -n metallb-system
  636  kubectl get pods
  637  microk8s kubectl get nodes -o wide
  638  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.20
  639  kubectl get pods
  640  kubectl delete service podpepe
  641  kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.20
  642  kubectl get pods
  643  kubectl get ser
  644  kubectl get service
  645  ip a
  646  kubectl get pods
  647  kubectl delete service podpepe
  648  kubectl get pods
  649  kubectl delete pods
  650  kubectl delete pods podpepe
  651  kubectl scale deployment podpepe --replicas 3
  652  kubectl run podpepe --image=sotobotero/udemy-devops:0.0.1 --port=80
  653  kubectl scale deployment podpepe --replicas 3
  654  kubectl scale deployment podpepkubectl describe deployment podpepee --replicas 3
  655  kubectl describe deployment podpepe
  656  kubectl label pod podpepe environment=dev
  657  kubectl describe pod podpepe
  658  kubectl describe deployment podpepe
  659  kubectl get deployment
  660  kubectl create deployment podpepe --image=sotobotero/udemy-devops:0.0.1
  661  kubectl describe pod podpepe
  662  kubectl describe deployment podpepe
  663  kubectl scale deployment podpepe --replicas 3
  664  kubectl get deployment
  665  kubectl describe pod podpepe
  666  kubectl get po
  667  kubectl get po
  668  kubectl scale deployment podpepe --replicas 5
  669  kubectl get pods
  670  kubectl scale deployment podpepe --replicas 2
  671  kubectl scale deployment podpepe --replicas 5
  672  kubectl get deployment
  673  kubectl get pods
  674  history
  675  kubectl get service
  676  kubectl get service
  677  history
  678  microk8s kubectl get all --all-namespaces
  679  microk8s dashboard-proxy
  680  kubectl scale deployment podpepe --replicas 4
  681  microk8s dashboard-proxy
  682  clear
  683  hist
  684  history
esteban@bootcamp:~$


























microk8s dashboard-proxy


sudo microk8s status --wait-ready

microk8s enable dashboard

microk8s kubectl describe secret -n kube-system microk8s-dashboard-token


microk8s kubectl get nodes

microk8s kubectl get pods

microk8s kubectl get svc

microk8s kubectl get services



microk8s kubectl get all --all-namespaces


eyJhbGciOiJSUzI1NiIsImtpZCI6ImNiLXFySWtWWE9jQ09jMDcwdi1ja0lvMy1rb0FJemM5blVkdmZKb1JoM2cifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJtaWNyb2s4cy1kYXNoYm9hcmQtdG9rZW4iLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiZGVmYXVsdCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6ImI5NmI3YjIwLTc0MzgtNGEyYS05MDc4LTRjZjhjNGYxZjYzNSIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTpkZWZhdWx0In0.HwECSysHh2he4Pl1s_ZPEmKVwTeGpK3itQeKqjvkQVH-LrTtnRZr1gOJ4IDymSuFGysTwfnwSJcw8eJ0XJ8wKO2iugDySOshKUjzFlTuYclOsTCgCVtcYfZQL6qOmyPWX0zMp0mAj3th_uWJCixvqFy9jyz3-ozt6g5twMf6zd74Zcwrjf1eyOQ85aldTNK69XIl-G8ASm9TDhvnDyEPmti_SXrxOe52n2RHOVX-7m7Rl0MJpTxkNd9OVkXqmRIlqeO5DgvpEjxHh-DDimxDwRf6gz4ulQlBeFAwfB5VPswXZe9_LpQk-CdJ_aVpi8dc9twvoNUO3fFVyjyGMeBvsg


microk8s stop

microk8s start


alias kubectl='microk8s kubectl'

microk8s join -- worker 192.168.73.128:25000/7b8ff9c8d9909a79255a6073f357ba48/cd3122605012



kubectl create -f fichero.yaml

kompose up hace el convert y create juntos. (pasa de docker a k8s).

kubectl create deployment mi-nginx --image=nginx:latest



https://youtu.be/Uf4VsIh1WF8?t=94


kubectl run poddesa16 --image=andrespspano/desafio12:latest --port=80 80


kubectl expose [..] --type='LoadBalancer' --port=8001 --target-port=8000 [..] --external-ip='<external-ip>'
kubectl expose pod podpepe --type=LoadBalancer --port=8080 --target-port=80 --external-ip=192.168.73.128




kubectl create deployment podpepe --image=sotobotero/udemy-devops:0.0.1
kubectl label pod podpepe environment=dev
kubectl describe pod podpepe
kubectl describe deployment podpepe

kubectl scale deployment podpepe --replicas 3
