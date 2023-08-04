# Dockering

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

## Linux

- Add user to docker group

```sh
sudo usermod -aG docker $USER
```

- Install

```
https://docs.docker.com/engine/install/debian/
https://docs.docker.com/engine/install/ubuntu/
https://docs.docker.com/compose/install
```

## MacOS

- Using Docker for Mac, Linux virtual machine tty
