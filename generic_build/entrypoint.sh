#!/bin/sh
echo "Working Directory: $1"
echo "Package Name: $2"
echo "Build Number: $3"
cd $1
npm install
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket $2
sam publish --template packaged.yaml --semantic-version $3