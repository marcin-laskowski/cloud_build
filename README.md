# cloud_build
Continuous deployment with Cloud Build on GKE

## Intro
The idea of this repository is to present the workflow for platforms deployed on GKE.
Current approach takes into the considerations four stages of work.

1. **Local** - Check code in local environemnt with installed Minikube.
1. **Dev** - Push to dev in order to deploy app on **dev cluster**.
1. **Canary** - Push to master, deploy on **prod cluster** giving access only **20%** of users in order to validate platform in production.
1. **Production** - Push with **Tag** on master in order to give access 100% to new version.


## Setup

### 1. Create triggers
1. Go to **Cloud Build** service and choose card: **Triggers**
1. Connect your GitHub repository with option: **GitHub (Cloud Build GitHub App)**
1. Create trigger for the dev branch, master branch and tag. At the end you should have three triggers (check pic below).

<p align="center">
    <img src="https://github.com/mlaskowski17/cloud_build/blob/master/assets/tag.png">
</p>

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
At the end you should see similar results:

<p align="center">
    <img src="https://github.com/mlaskowski17/cloud_build/blob/master/assets/tag2.png">
</p>



## Resource
- [List of official Cloud Builders](https://github.com/GoogleCloudPlatform/cloud-builders)
- [List of Cloud Builders created by community](https://github.com/GoogleCloudPlatform/cloud-builders-community)
