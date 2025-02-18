# Refresh

| Task | Command |
|---------|----------|
| create a pod with label app=web | `kubectl run nginx --image=nginx -l app=web` |
| expose this pod to a service | `kubectl expose pod nginx --name=nginx-svc --port=8080 --target-port=8080` |
| create a deploy, 3 replicas, with label app=nginx env=prod | `kubectl create deploy nginx-deploy --image=nginx --replicas=3` <hr/> `kubectl label deploy nginx-deploy app=nginx env=prod` |
| expose this deploy to a service | `kubectl expose deploy nginx-deploy --name=nginx-svc --port=8080 --target-port=8080` |
| create configmap named app-creds <br/> DB_NAME=mysql234 <br/> DB_HOST=mysql.com | `kubectl create configmap app-creds --from-literal=DB_HOST=mysql.com --from-literal=DB_NAME=mysql234` |
| create secret named db-creds <br/> DB_USERNAME=admin <br/> DB_PASSWORD=pass@123 | `kubectl create secret generic db-creds --from-literal=DB_USERNAME=admin --from-literal=DB_PASSWORD=pass@123` |
