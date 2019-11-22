#!/bin/sh
pwd
ls
echo "Working Directory: $1"
echo "Package Name: $2"
echo "Build Number: $3"

echo "AWS_ACCESS_KEY_ID: $AWS_ACCESS_KEY_ID"
echo "AWS_SECRET_ACCESS_KEY: $AWS_SECRET_ACCESS_KEY"
echo "AWS_DEFAULT_REGION: $AWS_DEFAULT_REGION"
cd $1
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket $2
sam publish --template packaged.yaml --semantic-version $3