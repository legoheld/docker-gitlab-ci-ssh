#!/bin/bash

# run client
eval $(ssh-agent -s)

# inject private key
ssh-add <(echo "$SSH_PRIVATE_KEY")

# ignore host checkig as it needs terminal
mkdir -p ~/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

# run cmds
exec "$@"