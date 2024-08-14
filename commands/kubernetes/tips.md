# Tips

Command | Why |
---------|----------|
 `kubectl proxy --port 8080` | See cluster APIs on 127.0.0.1:8080 |
 `kubectl explain pod` | A quick helper on pods |
 `kubectl explain pod.metadata` | A quick helper on pod's metadata |
 `kubectl api-resources` | See available API resources |
 *`kubectl run pod-name --help` | Shows docs for creating pods |
 `kubectl run pod-name --image=image-name --port=portNo --dry-run=client -o yaml` | Generate pod manifest |
  *`kubectl create deployment --help` | shows docs for creating deployment |
 `kubectl create deployment deploy-name --image=image-name --replicas=5 --dry-run=client -o yaml` | Generate Deployment manifest |
 `kubectl set image deployment nginx nginx=nginx:1.9.1 --record` | With this, `kubectl rollout history deployment nginx` will show the command used during the rollout |

## nginx

html page is located at
    /usr/share/nginx/html/index.html

## Accounts

### User accounts

For humans

### Service accounts

For applications
/var/run/secrets/kubernetes.io/serviceaccount

- `kubectl create sa service-account-name`
- spec.serviceAccountName: in pod config

### TLS

- [certificate-step](https://github.com/zealvora/certified-kubernetes-administrator/blob/master/Domain%204%20-%20Security/certificate-steps.md)
- zeal-key
  - openssl
- seal.csr
  - openssl
- zeal.csr (k8s object)
- k8s CA
- zeal.crt
