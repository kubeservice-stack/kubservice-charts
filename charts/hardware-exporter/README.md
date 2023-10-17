<!--- app-name: Hardware Exporter -->

# Hardware Exporter packaged by kubeservice team
## Introduction
you can use this exporter to get hardware information from your kubernetes cluster.
## Prerequisites

- Kubernetes 1.19+
- Helm 3.2.0+
- The server should enable redish service.
- In your server should reach the server's BMC IP.
you can use `ping BMC IP` to verify it.

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm repo add kubeservice-stack https://kubeservice-stack.github.io/kubservice-charts
helm repo update
helm install [RELEASE_NAME] hardware-exporter
```

## Uninstalling the Chart

To uninstall/delete the `my-release` release:

```console
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

### Global parameters

| Name                      | Description                                     | Value |
| ------------------------- | ----------------------------------------------- | ----- |
| `global.imageRegistry`    | Global Docker image registry                    | `""`  |
| `global.imagePullSecrets` | Global Docker registry secret names as an array | `[]`  |
| `global.storageClass`     | Global StorageClass for Persistent Volume(s)    | `""`  |

### Common parameters

| Name                     | Description                                                                                  | Value           |
| ------------------------ | -------------------------------------------------------------------------------------------- | --------------- |
| `kubeVersion`            | Force target Kubernetes version (using Helm capabilities if not set)                         | `""`            |
| `nameOverride`           | String to partially override common.names.fullname template (will maintain the release name) | `""`            |
| `fullnameOverride`       | String to fully override `common.names.fullname` template with a string                      | `""`            |
| `namespaceOverride`      | String to fully override common.names.namespace                                              | `""`            |
| `commonAnnotations`      | Annotations to add to all deployed objects                                                   | `{}`            |
| `commonLabels`           | Labels to add to all deployed objects                                                        | `{}`            |
| `extraDeploy`            | Array of extra objects to deploy with the release                                            | `[]`            |
| `clusterDomain`          | Kubernetes cluster domain name                                                               | `cluster.local` |

## Upgrading

```console
helm upgrade my-release my-repo/node-exporter
```