#!/bin/bash

if [[ "$SHELL" == *"bash"* ]]; then  #  works no matter path is /usr/bin/bash or /bin/bash
    RC_FILE="$HOME/.bashrc"
elif [[ "$SHELL" == *"zsh"* ]]; then
    RC_FILE="$HOME/.zshrc"
fi

if ! grep "docd=" $RC_FILE &> /dev/null; then
	echo "debian docker alias not present"
	echo "Adding alias dd in file: $RC_FILE"
	echo -e "\nalias docd=\"open -g -a Docker && sleep 10; docker start debian && docker attach debian\"\n" >> $RC_FILE
	echo "From now on you can run with typing only dd into the terminal"
fi

cd ~

if [ -d "$docker" ]; then
	cd docker/debian/
else
	git clone https://github.com/zstenger93/42_docker_img_debian.git docker
fi

./init_docker.sh

./run.sh
