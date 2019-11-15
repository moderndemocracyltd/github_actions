#!/bin/sh
cd $1
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket mp-aws-sam-packages