# 镜像

## Docker Hub

中科大镜像源

```sh
docker pull docker.mirrors.ustc.edu.cn/${image}
```

Azure中国镜像源

```sh
docker pull dockerhub.azk8s.cn/${image}
```

公共镜像需要添加`library`前缀

## gcr.io

中科大镜像源

```sh
docker pull gcr.mirrors.ustc.edu.cn/${image}
```

Azure中国镜像源

```sh
docker pull gcr.azk8s.cn/${image}
```

### k8s.gcr.io

```sh
docker pull k8s.gcr.io/${image}
相当于
docker pull gcr.io/google-containers/${image}
```

## quay.io

```sh
docker pull quay.mirrors.ustc.edu.cn/${image}
```

中科大镜像源

```sh
docker pull quay.mirrors.ustc.edu.cn/${image}
```

Azure中国镜像源

```sh
docker pull quay.azk8s.cn/${image}
```
