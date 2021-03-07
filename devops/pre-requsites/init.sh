#!/bin/bash

#1 Install AWS CLI
#sudo apt install aws-cli

#2 AWS Configure
    #Generate AWS Secret Credentials
    #Configure AWS with ACCESS KEY and SECRET ACCESS KEY
    #aws configure

#3 Create IAM Execution Role
aws iam create-role --role-name projectX-lambda-execution-role --assume-role-policy-document file://trust-policy.json

