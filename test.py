#!/usr/bin/python3
from run import run

user = "Adam"
command = "echo"
channel = "general"
valid = "dp: DP_ALPAT_FLOW_RATE"
valid2 = "data point: DP_ALPAT_FLOW_RATE"
invalid = "dp DP_ALPAT_FLOW_RATE"
invalid2 = "dp: DP@FLOW_RATE"

def run_test(command_text):
    response = run(user, command, channel, command_text)
    return response

res = run_test(valid)
if res['statusCode'] != '200':
    print("ERROR status code not equal to 200")
    print(response)
else:
    print("SUCCESS")


run_test(valid2)
run_test(invalid)
run_test(invalid2)
