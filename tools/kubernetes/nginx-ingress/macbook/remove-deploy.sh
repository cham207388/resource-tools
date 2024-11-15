#!/bin/bash
clear

pythonu1=python-v01
pythonu2=python-v02
pythoningress=python-ingress

tput setaf 5
echo -e "\n*******************************************************************************************************************"
echo -e "Cleaning up the Python resources"
echo -e "*******************************************************************************************************************"
tput setaf 2
kubectl delete deploy $pythonu1
kubectl delete deploy $pythonu2
kubectl delete svc $pythonu1
kubectl delete svc $pythonu2
kubectl delete ingress $pythoningress

tput setaf 7
echo -e "\n \n*******************************************************************************************************************"
echo -e "Done.  The ingress: $pythoningress has been removed from the cluster."
echo -e "******************************************************************************************************************* \n\n"
tput setaf 2
