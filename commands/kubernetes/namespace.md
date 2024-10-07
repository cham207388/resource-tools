# Namespace

Command | Explanation |
---------|----------|
`kubectl create namespace namespace-name` | create namespace |
`kubectl get namespaces` | get namespaces |
`kubectl config set-context --current --namespace=namespace-name` <br/> `kubectl config set-context --current -n namespace-name` <br/> `kubectl config set-context $(kubectl config current-context) --namespace=namespace-name` | set current context to namespace |
`kubectl get pods --namespace=namespace-name` <br/> `kubectl get pods -n namespace-name` | get pods in namespace |
`kubectl run pod-name --image=image-name --namespace=namespace-name` <br/> `kubectl run pod-name --image=image-name -n namespace-name` | create pod in namespace |
`kubectl get pod --a` | delete pod in namespace |
