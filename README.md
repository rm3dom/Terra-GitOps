# Terraform / Helm / GitHook / GitOps

Example using Terraform and Helm for GitOps. 

## This projects uses

* Terraform
* Helm
* Git Hooks
* minikube

## How to run
Setup minikube, then:
* git pre-commit does helm and terraform linting
* git post-commit runs terraform

## Installing minikube
https://minikube.sigs.k8s.io/docs/start/

You may have to configure minikube's DNS to access Docker Hub:
```
minikube ssh
sudo su
echo nameserver 8.8.8.8 >> /etc/resolve.conf
```



