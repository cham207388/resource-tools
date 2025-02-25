<!-- markdownlint-disable MD033 -->
# Refresh

| Task | Command |
|---------|----------|
| create a pod with label app=web | `kubectl run nginx --image=nginx -l app=web` |
| expose this pod to a service | `kubectl expose pod nginx --name=nginx-svc --port=8080 --target-port=8080` |
| create a deploy, 3 replicas, with label app=nginx env=prod | `kubectl create deploy nginx-deploy --image=nginx --replicas=3` <hr/> `kubectl label deploy nginx-deploy app=nginx env=prod` |
| expose this deploy to a service | `kubectl expose deploy nginx-deploy --name=nginx-svc --port=8080 --target-port=8080` |
| create configmap named app-creds <hr/> DB_NAME=mysql234 <hr/> DB_HOST=mysql.com | `kubectl create configmap app-creds --from-literal=DB_HOST=mysql.com --from-literal=DB_NAME=mysql234` |
| create secret named db-creds <hr/> DB_USERNAME=admin <hr/> DB_PASSWORD=pass@123 | `kubectl create secret generic db-creds --from-literal=DB_USERNAME=admin --from-literal=DB_PASSWORD=pass@123` |
| taint node01 with app=alpha NoSchedule | `kubectl taint node node01 app=alpha:NoSchedule`|
| create ingress resource called ing-video <hr/> host: example.com <hr/> path: /video <hr/> service: my-video-svc | `kubectl create ingress ing-video --rule="example.com/video*=my-video-svc:8080 --dry-run=server -oyaml > ing-video.yaml`|
| kubectl explain object | `kubectl explain pod --recursive` |
| kubectl verb object --help | `kubectl create role --help` <hr/> `kubectl create secret generic --help` <hr/> `kubectl run --help` <hr/> |
