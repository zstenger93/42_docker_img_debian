#!/bin/bash

# start docker engine on campus mac (thanks to 42Toolbox)
pkill Docker
unlink ~/Library/Containers/com.docker.docker &>/dev/null ;:
unlink ~/Library/Containers/com.docker.helper &>/dev/null ;:
unlink ~/.docker &>/dev/null ;:
rm -rf ~/Library/Containers/com.docker.{docker,helper} ~/.docker &>/dev/null ;:
mkdir -p "/goinfre/$USER/docker"/{com.docker.{docker,helper},.docker}
ln -sf "/goinfre/$USER/docker"/com.docker.docker ~/Library/Containers/com.docker.docker
ln -sf "/goinfre/$USER/docker"/com.docker.helper ~/Library/Containers/com.docker.helper
ln -sf "/goinfre/$USER/docker"/.docker ~/.docker
open -g -a Docker

echo "Waiting for Docker engine to be ready..."
until docker stop arch &> /dev/null
do
    sleep 1
done
docker rm arch &> /dev/null
docker build -t arch ~/docker
docker run -itv ~/:/home/user -e USER=$USER -e DEBUGINFOD_URLS="https://debuginfod.archlinux.org" -e PROMPT2='[arch] %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)' --name arch arch