# kubeservice-scheduler-plus
## TL;DR

[Kubeservice scheduler Plus](https://github.com/kubeservice-stack/crane-scheduler) is a Kubernetes scheduler which can schedule pod based on actual node load. `Independent of Prometheus`

This chart creates a [[Kubeservice Crane scheduler Plus](https://github.com/kubeservice-stack/crane-scheduler) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.


## Introduction

This chart bootstraps Crane Scheduler on a Kubernetes cluster using the Helm package manager.

## Prerequisites

* Kubernetes 1.18+
* Helm 3+

## Source Code

* <https://github.com/kubeservice-stack/crane-scheduler>
* <https://github.com/kubeservice-stack/node-metrics>

## Add Helm repository

```console
helm repo add kubeservice-stack https://kubeservice-stack.github.io/kubservice-charts
helm repo update
```

_See [`helm repo`](https://helm.sh/docs/helm/helm_repo/) for command documentation._

## Install Chart

```console
helm install [RELEASE_NAME] kubeservice-scheduler-plus
```

_See [configuration](#configuration) below._

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Uninstall Chart

```console
helm uninstall [RELEASE_NAME]
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Upgrading Chart

```console
helm upgrade [RELEASE_NAME] [CHART] --install
```

_See [helm upgrade](https://helm.sh/docs/helm/helm_upgrade/) for command documentation._

## Configuration

See [Customizing the Chart Before Installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with detailed comments, visit the chart's [values.yaml](./values.yaml), or run these configuration commands:

```console
# Helm 2
$ helm inspect values kubeservice-scheduler-plus

# Helm 3
$ helm show values kubeservice-scheduler-plus
```

See [kubeservice-stack/crane-scheduler/README.md](https://github.com/kubeservice-stack/crane-scheduler) for further information.

## Configuration

The following table lists the configurable parameters of the Crane-scheduler chart and their default values.

| Parameter                                                  | Description                               | Default                                         |
|:-----------------------------------------------------------|:------------------------------------------|:------------------------------------------------|
| `scheduler.enable`                                         | Whether to deploy Scheduler               | true                |
| `scheduler.image.repository`                               | Image name of Scheduler.                  | `docker.io/dongjiang1989/crane-scheduler` |
| `scheduler.image.tag`                                      | Image tag of Scheduler. Optional, given app version of Helm chart is used by default | `main` |
| `scheduler.replicaCount`                                   | Replica count of Scheduler | `1` |
| `controller.enable`                                        | Whether to deploy Scheduler-controller                   | true                |
| `controller.image.repository`                              | Image name of Scheduler-controller.  | `docker.io/dongjiang1989/crane-scheduler-controller` |
| `controller.image.tag`                                     | Image tag of Scheduler-controller. Optional, given app version of Helm chart is used by default | `main` |
| `controller.replicaCount`                                  | Replica count of Scheduler-controller | `3` |
| `node-metrics.enable`                                      | Whether to deploy node metrics                   | true                |
| `node-metrics.image.repository`                            | Image name of node metrics.  | `docker.io/dongjiang1989/node-metrics` |
| `node-metrics.image.tag`                                   | Image tag of node metrics. Optional, given app version of Helm chart is used by default | `latest` |
| `global.port`                                              | node metrics port | `19101` |
