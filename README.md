# Docker

## How

- Layer storage
  - Device Mapper
  - AUFS
  - ZFS
  - Btrfs
  - Overlay
  - VFS
- Linux CGroup
- Linux Namespace
  - Mount
  - UTS
  - IPC
  - PID
  - Network
  - User

## Usage

```sh
# Using single network
docker network create docker-network
# Remove dangling images
docker rmi $(docker images -qf dangling=true)
# Update restart strategy
docker update --restart=always rabbitmq
```

## MacOS

- Using Docker for Mac, Linux virtual machine tty

```
~/Library/Containers/com.docker.docker/Data/vms/0/tty
```

## Linux

- Add user to docker group


```sh
sudo usermod -aG docker $USER
```

- Install

```
https://docs.docker.com/install/linux/docker-ce/centos
https://docs.docker.com/compose/install
https://download.docker.com/linux/centos/7/x86_64/stable/Packages
```
