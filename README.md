<h1 align=center>📖 42_docker_img_debian</h1>

IF IT SAYS WRONG VERSION:

Delete your docker folder from home, exit docker and run the script provided here in the readme

In case it asks for password, just `ctrl+c` out and let it run

# How to Install

## With curl

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zstenger93/42_docker_img_debian/master/setup_docker.sh)"
```

## Manually

```
git clone https://github.com/zstenger93/42_docker_img_debian.git
```
```
cd debian/
```
```
./init_docker.sh
```
```
./run.sh
```

# What it does
The script will setup a debian image for you which can be run afterwards with an alias:

```
docd
```

or:

```
open -g -a Docker && sleep 10; docker start debian && docker attach debian
```
It creates an alias for this called `docd` so next time all you have to do is to
`start up docker` and in the terminal just type `docd` and you are good to go
