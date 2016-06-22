# docker-gitlab-ci-ssh
A docker container that reads the SSH_PRIVATE_KEY environment variable and setups the ssh client ready to run any ssh commands.
This is especially usefull for gitlab ci build tasks where you need to run ssh commands on a remote server.

## Setup gitlab
Go to the project settings and set a secret variable as described here: http://docs.gitlab.com/ce/ci/ssh_keys/README.html#ssh-keys-when-using-the-docker-executor

## Example .gitlab-ci.yml
 
