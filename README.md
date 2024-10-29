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

## Registries

- public.ecr.aws
- gcr.io
- ghcr.io
- quay.io

## Linux

- Add user to docker group

```sh
sudo usermod -aG docker $USER
```

- Install

```
https://docs.docker.com/engine/install/ubuntu/
```

## MacOS

- Using Docker for Mac, Linux virtual machine tty
