#!/bin/bash


# export environment variables
source config
export $(cut -d= -f1 config)

# create bucket for config / temp files storage
gsutil mb -p $PROJECT_ID gs://$BUCKET


gcloud projects add-iam-policy-binding developer-269501 \
    --member=serviceAccount:383252814451@cloudbuild.gserviceaccount.com \
    --role=roles/container.developer
