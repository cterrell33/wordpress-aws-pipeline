#!/bin/bash

echo "**THIS SCRIPT VALIDATES AND CREATES/UPDATES THE CF STACK**"

aws cloudformation deploy --stack-name $1 --template-file $1.yaml --parameter-overrides file://parameters.json #--capabilities CAPABILITY_IAM #--no-fail-on-empty-changeset #--no-execute-changeset
