#!/bin/bash

if [[ "$SHELL" == *"bash"* ]]; then  #  works no matter path is /usr/bin/bash or /bin/bash
    RC_FILE="$HOME/.bashrc"
elif [[ "$SHELL" == *"zsh"* ]]; then
    RC_FILE="$HOME/.zshrc"
fi

if ! grep "dd=" $RC_FILE &> /dev/null; then
	echo "debian docker alias not present"
	echo "Adding alias dd in file: $RC_FILE"
	echo -e "\nalias dd=\"docker start debian && docker attach debian\"\n" >> $RC_FILE
	echo "From now on you can run with typing only dd into the terminal"
fi

cd debian/

./init_docker.sh

./run.sh
