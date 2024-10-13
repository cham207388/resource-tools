# Questions

- Create a namespace called 'mynamespace' and a pod with image nginx called nginx on this namespace
    `k create nd mynamespace`
    `k run nginx --image=nginx --namespace=mynamespace`
- Create the pod that was just described using YAML
    [answer](./2-nginx.yaml)
- Create a busybox pod (using kubectl command) that runs the command "env". Run it and see the output
    `k run busybox --image=busybox --command env`
- Create a busybox pod (using YAML) that runs the command "env". Run it and see the output
    [answer](./3-busybox.yaml)
- Get the YAML for a new namespace called 'myns' without creating it
    `k create ns myns --dry-run=client -o yaml`
