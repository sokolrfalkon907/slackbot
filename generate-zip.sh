#!/bin/bash

if [ -z "$VIRTUAL_ENV" ]; then
	echo "No virtual environment is active" >2
	exit 1
fi

ZIP="./aws.zip"
SOURCE=("lambda_function.py" "./lib/python3.*/site-packages/*")

cd $VIRTUAL_ENV
zip -r $ZIP ${SOURCE[*]} > /dev/null
RET=$?
if [ "$RET" == "0" ]; then
	echo "Done"
else
	echo "zip returned $RET"
fi
