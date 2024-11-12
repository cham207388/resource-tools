# Namespace

Command | Explanation | Example |
---------|----------|----------|
`kubectl create namespace namespace-name` | create namespace | `kubectl create namespace dev` |
`kubectl get namespaces` | get namespaces | `kubectl get namespaces` |
`kubectl config set-context --current --namespace=namespace-name` | set current context to namespace | `kubectl config set-context --current --namespace=dev`  <br/> <hr> `kubectl config set-context --current -n dev` <br/> <hr> `kubectl config set-context $(kubectl config current-context) --namespace=dev` |
`kubectl get pods --namespace=namespace-name` | get pods in namespace | `kubectl get pods -n dev` <br/> <hr> `kubectl get pods -n namespace-name` |
`kubectl run pod-name --image=image-name --namespace=namespace-name` | create pod in namespace | `kubectl run pod-name --image=image-name -n dev` <br/> <hr> `kubectl run pod-name --image=image-name -n namespace-name` |
`kubectl get pod --all-namespaces` | get all pods in all namespaces | `kubectl get pod --all-namespaces` |
`kubectl config view --minify \| grep namespace:` | Get current namespace | `kubectl config view --minify \| grep namespace:` <br/> <hr> `kubens` |
