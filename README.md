# cloud_build
Continuous deployment with Cloud Build on GKE

## Intro
The idea of this repository is to present the workflow for platforms deployed on GKE.
Current approach takes into the considerations four stages of work.

1. **Local** - Check code in local environemnt with installed Minikube.
1. **Dev** - Push to dev in order to deploy app on **dev cluster**.
1. **Canary** - Push to master, deploy on **prod cluster** giving access only **20%** of users in order to validate platform in production.
1. **Production** - **Tag** master commit in order to give access 100% to new version.


## Setup

### 1. Create trigger
1. Go to **Cloud Build** service and choose card: **Triggers**
1. Connect your GitHub repository with option: **GitHub (Cloud Build GitHub App)**
1. Create trigger for the branch

### 2. Run environment variables
```bash
. setup.sh
```

### 3. Push changes
```bash
git add .
git commit -m "change"
git push
```



## Resource
- [List of official Cloud Builders](https://github.com/GoogleCloudPlatform/cloud-builders)
- [List of Cloud Builders created by community](https://github.com/GoogleCloudPlatform/cloud-builders-community)
