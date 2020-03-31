#!/bin/bash


# export environment variables
source config
export $(cut -d= -f1 config)


# gcloud projects add-iam-policy-binding developer-269501 \
#     --member=serviceAccount:383252814451@cloudbuild.gserviceaccount.com \
#     --role=roles/container.developer


#cloud-build-local --config=cloudbuild.yaml \
#     --push=false \
#     --bind-mount-source=true/false \
