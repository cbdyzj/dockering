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
docker network create docker-network # Using single network
docker rmi $(docker images -qf dangling=true) # Remove dangling images
docker update --restart=always rabbitmq # Update restart strategy
```

## MacOS

- Using Docker for Mac, Linux virtual machine tty

```
~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty
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
