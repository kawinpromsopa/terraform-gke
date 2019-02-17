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
