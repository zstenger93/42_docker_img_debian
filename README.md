<h1 align=center>📖 42_docker_img_debian</h1>

In case it asks for password, just `ctrl+c` out and let it run

# What it does
The script will setup a debian image for you which can be run afterwards with:
```
docker start debian && docker attach debian
```
It creates an alias for this called `dd` so next time all you have to do is to
`start up docker` and in the terminal just type `dd` and you are good to go

# Hot to Install

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

## With curl

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zstenger93/42_docker_img_debian/master/setup_docker.sh)" 
```