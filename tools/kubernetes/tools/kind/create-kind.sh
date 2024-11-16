#!/bin/bash

# Author: Alhagie Bai Cham
# Date Created: 10/26/2024
# Date Modified: 11/16/2024

# Description
# script to setup a kind cluster with metric server and nginx ingress controller

echo "Setting up Kind Cluter..."

# Deleting kind clusters
echo "Deleting existing clusters..."

for cluster in $(kind get clusters); do
  kind delete cluster --name "$cluster"
  echo "${cluster} is deleted!"
done

# Create Kind cluster
kind create cluster --config cluster-config.yaml --image kindest/node:v1.30.6

sleep 10
echo 
echo "Add metric server"
kubectl apply -f components.yaml

sleep 10
echo 
echo "Kind cluster is up..."

echo 
echo "Available nodes..."
kubecolor get nodes -o wide

echo 
echo "Deploying ingress controller in ingress-nginx namespace"

# Credit to K8s an enterprise guide for the ingress controller config
kubectl apply -f nginx-ingress-controller.yaml
