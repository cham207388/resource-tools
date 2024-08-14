# Notes

- create pods
    `kubectl run service-pod-1 --image=nginx --labels app=backend`
    `kubectl run service-pod-2 --image=nginx --labels app=backend`

- create services
    `kubecolor expose pod service-pod-1 --name service1 --port=80 --target-port=80`
    `kubecolor expose pod service-pod-2 --name service2 --port=80 --target-port=80`
- create ingress config
  - ingress-nb.yaml
- `helm upgrade --install ingress-nginx ingress-nginx --repo <https://kubernetes.github.io/ingress-nginx> --namespace ingress-nginx --create-namespace`
