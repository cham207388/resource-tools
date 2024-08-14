# Example Usage

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .Release.Name }}-configmap
  labels:
    app: {{ .Chart.Name }}
    chart: {{ .Chart.Version }}
data:
  repository: {{ .Values.image.repository }}
  revision: {{ .Release.Revision }}
  app-version: {{ .Chart.AppVersion }}
```

- helm get
  - helm get notes mysqldb
  - helm get values mysqldb
  - helm get values mysqldb --revision 1
  - helm get values mysqldb --all
  - helm get manifest mysqldb
- helm history
- helm rollback
  - helm rollback mysqldb 1
  - you can rollback to a release that's uninstall with --keep-history
- helm upgrade --install mysqldb bitnami/mysql
  upgrades if it's available, otherwise, install
- wait and timeout option
  - `helm install mysqldb bitnami/mysql --wait --timeout 10m30s`
    - waits for the pods to be up and running but fails if timeout is reached
- atomic
  - `helm install mysqldb bitnami/mysql --atomic --timeout 10m30s`
    - waits for the pods to be up and running or rollbacks to the previous if timeout if reached
- force option
  - `helm upgrade mysqldb bitnami/mysql --force`
    - deletes all pods and create new one. If not --force, it only recreates the one that has changes
- cleanup-on-failure
  - (use with because you will not be able to debug)
- | are used to pass the output of the first expresssion as an input in the second function
  - {{.Values.postgres.db | default "testdb"}}

- if, else
- with for looping through list.
  - the . refers to the current element
  - use $. for the object containing Values, Chart etc
- range for looping through dictionary

## Create and host local repo

1. create a folder: i name it charts-repo
2. ```helm repo index charts-repo```
3. ```helm package firstchart -d charts-repo```
4. ```helm repo index charts-repo```

python comes with an in built server
to start: `python3 -m http.server --bind 1 127.0.0.1 8080`

---
creating a secret private/public using gpg

1. gpg --full-generate-key
  a. choose kind, expire, real name, email address, optional comment
  b. creates .kbx
2. Change to .gpg
  a. gpg --export-secret-keys > ~/.gnupg/name-you-want.gpg
  