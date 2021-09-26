Inner Loop
===

Enable Kubernetes in Docker Desktop!

```
$ kubectl config use-context docker-desktop
$ kubectl create ns loop
$ kubectl apply -n loop -f services.yaml
$ kubectl apply -n loop -f local.yaml
$ kubectl get pods -n loop
$ kubectl port-forward dev-<podname> -n loop 9999:80
```

... new tab ...


```
$ kubectl exec --stdin --tty dev-<podname> -n foo -- /bin/bash
$ cd /code
$ dotnet new mvc --no-https -n bar
$ cd bar
$ dotnet watch run --urls http://0.0.0.0
```

---

to deploy

```
$ cd bar
$ docker build -t maxhorstmann/loops:latest .
$ kubectl apply -n loop -f services.yaml
$ kubectl apply -n loop -f prod.yaml
```

TODO automate this ^^ 
* instead / in adition to  `latest`, auto-generate a version number
* that should redeploy the updated images? if not:

```
kubectl rollout restart deployment prod  -n loops
```

