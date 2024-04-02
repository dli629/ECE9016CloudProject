# MySQL Kubernetes Configuration

### While executing these commands make sure you are in the folder where files are present or change commands to include the file path.

<b>1. Create persistent volume claim following command.</b>

```
kubeclt create -f mysql-persistent-volume-claim.yaml
```

<b>2. Create secret using following command.</b>

```
kubeclt create -f mysql-secret.yaml
```

<b>3. Create config map</b>

```
kubeclt create -f mysql-secret.yaml
```

<b>4. Create Deployment</b>

```
kubeclt create -f mysql-deployment.yaml
```

<b>5. Create Service</b>

```
kubeclt create -f mysql-service.yaml
```
<b>6. Connect DB with password: winter</b>

```
kubectl exec --stdin --tty pod/mysql-deploy-596f574d57-ksz96 -- /bin/bash
mysql -p
```