# Kubernetes

## 核心组件

### etcd

- 保存集群的状态

### API Server

- 资源操作的唯一入口
- 提供认证、授权、访问控制、API注册和发现等机制

### Controller Manager

- 负责维护集群的状态，比如故障检测、自动扩展、滚动更新等

### Scheduler

- 负责资源的调度，按照预定的调度策略将Pod调度到相应的机器上

### kubelet

- 负责维护容器的生命周期，同时也负责Volume（CVI）和网络（CNI）的管理

### Container Runtime

- 负责镜像管理以及Pod和容器的真正运行（CRI）

### kube-proxy

- 负责为Service提供cluster内部的服务发现和负载均衡

## 重要抽象

### Pod

- Pod是一组紧密关联的容器集合，它们共享IPC、Network和UTC namespace
- Pod是Kubernetes调度的基本单位。”

### Namespace

- Namespace是对一组资源和对象的抽象集合
- pod, service, replication controller和deployment等都是属于某一个namespace的（默认是default）
- node, persistent volume，namespace等资源不属于任何namespace

### Node

- Node是Pod真正运行的主机，可以是物理机，也可以是虚拟机
- 默认情况下，kubelet在启动时会向master注册自己，并创建Node资源

### Service

- Service是对一组提供相同功能的Pods的抽象，并为它们提供一个统一的入口

### Volume

- Volume机制以便将数据持久化存储
- Volume
- Persistent Volume：集群之中的一块网络存储。跟Node一样，是集群的资源。PV与Volume类似，但独立于 Pod 的生命周期

### Deployment

- Deployment为Pod和Replica Set（下一代Replication Controller）提供声明式更新

### Secret

- Secret解决了密码、token、密钥等敏感数据的配置问题，而不需要把这些敏感数据暴露到镜像或者Pod Spec中

### StatefulSet

- StatefulSet是为了解决有状态服务的问题

### DaemonSet

- DaemonSet保证在每个Node上都运行一个容器副本，常用来部署一些集群的日志、监控或者其他系统管理应用

### Job

- Job负责批量处理短暂的一次性任务 (short lived one-off tasks)，即仅执行一次的任务，它保证批处理任务的一个或多个Pod成功结
- Cron Job即定时任务，就类似于Linux系统的crontab，在指定的时间周期运行指定的任务

### Ingress

- Ingress就是为进入集群的请求提供路由规则的集合

## YAML Configuration

- apiVersion：版本
- kind：类型
- metadata：元数据
- spec：方案