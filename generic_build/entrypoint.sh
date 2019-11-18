#!/bin/sh
pwd
ls
echo "Working Directory: $1"
echo "Package Name: $2"
echo "Build Number: $3"
cd $1
echo "//npm.pkg.github.com/:_authToken=$GITHUB_TOKEN" > .npmrc
ls
cat .npmrc
npm install
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket $2
sam publish --template packaged.yaml --semantic-version $3