# Kubeservice CPUPools Controller

`Kubeservice CPUPools Controller` is kubernetes Node CPUSets Controller for Pod refined cpu allocation.

[Kubeservice CPUPools Controller](https://github.com/kubeservice-stack/cpusets-controller) is a Kubernetes Controller  for kubernetes pod refined cpu allocation.

This chart creates a [Kubeservice CPUPools Controller](https://github.com/kubeservice-stack/cpusets-controller) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Source Code

* <https://github.com/kubeservice-stack/cpusets-controller>

## Requirements

Kubernetes 1.16+ with Beta APIs enabled

## Add Helm repository

```console
helm repo add kubeservice-stack https://kubeservice-stack.github.io/kubservice-charts
helm repo update
```

_See [`helm repo`](https://helm.sh/docs/helm/helm_repo/) for command documentation._

## Install Chart

```console
helm install [RELEASE_NAME] kubeservice-cpupools-controller
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
$ helm inspect values kubeservice-cpupools-controller

# Helm 3
$ helm show values kubeservice-cpupools-controller
```

See [kubeservice-stack/cpusets-controller/README.md](https://github.com/kubeservice-stack/cpusets-controller) for further information.

## Values

The following table lists the configurable parameters of the Crane-scheduler chart and their default values.

| Parameter                                                  | Description                               | Default                                         |
|:-----------------------------------------------------------|:------------------------------------------|:------------------------------------------------|
| `controller.image.repository`                               | Image name of controller.                  | `docker.io/dongjiang1989/cpusets-controller` |
| `controller.image.tag`                                      | Image tag of controller. Optional, given app version of Helm chart is used by default | `v1.1.0` |
| `deviceplugin.image.repository`                              | Image name of deviceplugin.  | `docker.io/dongjiang1989/cpusets-device-plugin` |
| `deviceplugin.image.tag`                                     | Image tag of deviceplugin. Optional, given app version of Helm chart is used by default | `v1.1.0` |


----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.4.0](https://github.com/norwoodj/helm-docs/releases/v1.4.0)
