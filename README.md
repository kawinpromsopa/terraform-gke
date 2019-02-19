## Deploy Google kubernetes Engine with Terraform

- gcloud config set project `<PROJECT_ID>`
- gcloud config set compute/zone `<COMPUTE_ZONE>`

### Get our the Credentials keys
* https://cloud.google.com/video-intelligence/docs/common/auth

### First step : You must to export the `credentials` keys, To and download with .json file!

* example : `export GOOGLE_APPLICATION_CREDENTIALS=<path/to/credentials.json>`

### Second step : Basiclly terraform can will deployment with workspace!
##### In location `prod` or `staging` Directory env, You must to create your workspace with following:

* `terraform init`
* `terraform workspace new <prod or staging>`

* example `terraform workspace new <staging>`

##### Note* The workspace <prod> or <staging> has to sperate resources envoroiment

### Third step :  

### Enable API Service your project : GCE
* https://console.cloud.google.com/apis/library/compute.googleapis.com?q=cloud%20compute&id=a08439d8-80d6-43f1-af2e-6878251f018d&project=terraform-kubernetes-231903&folder&organizationId

### Enable API Service : GKE 
* https://console.cloud.google.com/apis/library/container.googleapis.com?q=kuber&id=1def4230-f361-4931-b386-576c62b90799&project=terraform-kubernetes-231903&folder&organizationId

### Enable API Service : CloudSQL Admin
* https://console.developers.google.com/apis/api/sqladmin.googleapis.com/overview?project=89203834305

## Connect GKE with kubectl

### Update component

* `gcloud components update`

### Generating a kubeconfig entry

* `gcloud container clusters get-credentials <your_cluster_gke_name>`

### Show gke node list

* `kubectl get nodes`

###### Ref : `https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for-kubectl`


### Connect to CloudSQL 

* `psql "sslmode=disable dbname=postgres user=<user> hostaddr=<ip_adreess>"`