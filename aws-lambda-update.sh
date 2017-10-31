#!/bin/bash

FUNC_NAME="EchoBot"
FILE="./aws.zip"

aws lambda update-function-code \
	--function-name $FUNC_NAME \
	--zip-file fileb://$FILE \
	--publish
