#!/usr/bin/env bash

TERRAFORM_DIR='terraform'
WEBSITE_DIR='website'

if [[ ! -z $1 ]]; then
  export AWS_DEFAULT_PROFILE=$1
fi

if [[ -z ${AWS_DEFAULT_PROFILE} ]]; then
  echo "Could not determine the AWS profile to use!"
  exit $?;
fi

if [[ ! -d ${WEBSITE_DIR} ]]; then
  echo "Could not locate the website directory!"
  exit $?;
fi

if [[ ! -d ${TERRAFORM_DIR} ]]; then
  echo "Could not locate the terraform directory!"
  exit $?;
fi

cd ${WEBSITE_DIR}
hexo generate
cd -

cd ${TERRAFORM_DIR}
S3_BUCKET=$(terraform output s3_bucket_name)
WEBSITE_URL=$(terraform output website_url)
cd -

aws s3 sync ${WEBSITE_DIR}/public/ s3://${S3_BUCKET}/ --profile ${AWS_DEFAULT_PROFILE}
if [ $? -eq 0 ]; then
  echo "Content synced to AWS S3."
else
  echo "Error syncing content to AWS S3."
  exit $?
fi

echo "Deployment complete. Visit ${WEBSITE_URL}"
