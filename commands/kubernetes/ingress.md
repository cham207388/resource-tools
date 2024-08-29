# Ingress

ALB is created when a resource is created. Not when the ingress controller is deployed

create the ingress resource

try with 2048 game
[steps](https://aws.amazon.com/blogs/opensource/kubernetes-ingress-aws-alb-ingress-controller/)

## Requirements

- controller
  - takes a layer 7 proxy to implement ingress rules.
  - you must have an ingress controller ot satisfy an Ingress. Only creating an ingress resource has no effect
- *resource
  - contains a set of routing rules based on which traffic is routed to a service

### Build

- create a deployment with 2 pods
- create a service to handle traffic to this endpoints
- create ingress resource (ingress rules)
  - [resource](./configs/ingress-resource.yaml)
- create ingress controller
  - [getting-started](https://kubernetes.github.io/ingress-nginx/deploy/)
  - make sure that ingress resource.spec.ingressClassName is updated with \
    the name of the ingress controller `kubectl get ingresscontroller`
