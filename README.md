## Deploy Google kubernetes Engine (GKE), Google Cloud Compute (GCE), Google Cloud SQL with Terraform!

* Get your the Credentials keys.
```
https://cloud.google.com/video-intelligence/docs/common/auth
```

### Ensure your enable APIs & Services for `GKE`, `GCE`, `CloudSQL`, `Network API`

* First step: After download the `credentials keys` with `.json` file, You must to export with this.
```
* example : `export GOOGLE_APPLICATION_CREDENTIALS=<PATH/TO/CRENDENTIALS.json>`
```

* Second step: Basiclly terraform can deployment with workspace!
##### In location `prod` or `staging` Directory env, You must to create your workspace with following:
```
terraform init
terraform workspace new <PROD or STAGING>
terraform workspace select <PROD or STAGING>
```
* example `terraform workspace new staging`
* NOTE: The workspace `prod` or `staging` our needed to sperate resources envoroiment.

* Third step: Deployment 
```
terraform apply -auto-approve
```

### Connect The Google kubernetes cluster with `kubectl`

* Update component
```
gcloud components update
```

* Select your project
```
gcloud config set project <PROJECT_ID>
gcloud config set compute/zone <COMPUTE_ZONE>
```

* Generating a kubeconfig entry
```
gcloud container clusters get-credentials <YOUR_GKE_CLUSTER_NAME>
```
* example `gcloud container clusters get-credentials gke-staging-cluster`

* Show gke node list
```
kubectl get nodes
```

### Create the crendentials key for Applications connect to CloudSQL with CloudSQL-Proxy
```
kubectl create secret generic cloudsql-instance-credentials \
--from-file=<PATH/TO/CRENDENTIALS.json>

kubectl create secret generic cloudsql-db-credentials \
--from-literal=username=<USER> --from-literal=password=<PASSWORD>
```

### Testing deployment wordpress connect to CloudSQL

* Create database
```
gcloud sql databases create <DB_NAME> --instance=<CLOUDSQL_NAME>
```

```
kubectl apply -f wordpress_cloudsql_deployment.yaml
kubectl describe deployment wordpress
kubectl logs -l app=wordpress -c web
kubectl logs -l app=wordpress -c cloudsql-proxy
kubectl expose deployment wordpress --type=LoadBalancer
kubectl get svc
```

* Connect CloudSQL with `psql-cli`
```
* `psql "sslmode=disable dbname=postgres user=<USER> hostaddr=<IP_ADDRESS>"
```
