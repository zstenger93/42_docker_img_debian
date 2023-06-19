FROM 		debian:bullseye
ENTRYPOINT	[ "/bin/zsh" ]
WORKDIR		/home/user/projects
ENV			USER=$USER
RUN			apt-get update
RUN			apt-get upgrade -y
RUN			apt-get install -y gcc make libreadline-dev valgrind man-db nano curl git lsof lldb zsh diffutils net-tools moreutils python3 pip
RUN			sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"	\
			&& echo cd /home/user/projects >> /root/.zshrc \
			&& echo 'PROMPT="Debian %(?:%{%}➜ :%{%}➜ ) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)"' >> /root/.zshrc \
			&& echo 'export CWEXEC="./minishell"' >> /root/.zshrc \
			&& echo 'alias mm="make && $CWEXEC"' >> /root/.zshrc \
			&& echo 'alias vg="make && valgrind -q --leak-check=full $CWEXEC"' >> /root/.zshrc \
			&& chsh -s /bin/zsh \
			&& python3 -m pip install --upgrade pip setuptools \
			&& python3 -m pip install norminette
