# Functional Specification
Author: Adam Levy

Developer: Roma Sokolenko

## Overview

This project is to implement a slack bot that responds to a user using the
`/echo` command from a slack channel with the app. The user will be able to
send some simple colloquial messages and get friendly responses (most of the
time).


## Functional Requirements

### Commands
The user will use the `/echo` command to send a message to the bot.

For example, when the user types `/echo hello`, the bot will parse the message
"hello" and respond according to the following requirements.

### Messages and responses
#### "Hello"
If the user sends "Hello" to the bot, the bot will respond with "Hi there, how
are you?"

#### "I'm fine"
If the user sends "I'm fine" to the bot, the bot will respond with "That's
good. Only fine?"

#### Any other message
If the user sends any other message to the bot, the bot will respond with
```
Hi, I am the EchoBot. You can send the following messages that I will understand:

"Hello"
"I'm fine"
```
