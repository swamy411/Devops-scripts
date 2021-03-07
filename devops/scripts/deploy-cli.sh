#!/bin/bash
WORKSPACE=$(pwd)

#zip the lambda
cd "${WORKSPACE}"/lambda-A || exit
outputfile=lambda-A-3.zip
zip -r "${WORKSPACE}"/output/${outputfile} .

cd "${WORKSPACE}" || exit
# To Create a New Lambda 
# aws lambda create-function --function-name lambda-A \
# --zip-file fileb://output/lambda-A.zip --handler index.handler --runtime nodejs14.x \
# --role arn:aws:iam::997027870050:role/projectX-lambda-execution-role

# To Update Existing Lambda 
aws lambda update-function-code \
    --function-name  lambda-A \
    --zip-file fileb://output/${outputfile}
