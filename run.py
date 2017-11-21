def run(user, command, channel, command_text):
    response_string = 'Hi, I am the EchoBot. You can send the following messages that I will understand:\n"Hello"\n "I\'m fine"'

    if command_text == "Hello":
        response_string = "Hi there, how are you?"
    elif command_text == "I'm fine":
        response_string = "That's good, only fine?"

    return respond(None, response_string)

def respond(err, res=None):
    return {
        'statusCode': '400' if err else '200',
        'body': err.args[0] if err else res,
        'headers': {
            'Content-Type': 'application/json',
        },
    }


