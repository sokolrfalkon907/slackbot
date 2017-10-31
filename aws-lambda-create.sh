#!/bin/bash

FUNC_NAME="EchoBot"
FILE="./aws.zip"
ROLE_ARN="arn:aws:iam::900582993474:role/service-role/EchoBot"
PY_FILE="lambda_function"
HANDLER="${PY_FILE}.lambda_handler"

aws lambda create-function \
	--function-name $FUNC_NAME \
	--zip-file fileb://$FILE \
	--role $ROLE_ARN \
	--handler $HANDLER \
	--runtime python3.6 \
	--timeout 15 \
	--memory-size 512
