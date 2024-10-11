# Using Ingress

1. Create an ingress resource
2. Deploy nginx ingress controller that will watch the ingress resource
3. Which will then route traffic to the appropriate service by creating a LB

- `curl example.com --resolve example.com:80:ip-of-load-balancer`

`kubectl get ingresscontroller`
