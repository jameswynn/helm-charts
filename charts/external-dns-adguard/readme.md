# external-dns-adguard

This project is like [external-dns](https://github.com/kubernetes-sigs/external-dns), but for [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome).
It discovers hostnames by analyzing annotations on services and ingresses, then syncs them with an AdGuard Home instance.

[Project Repo](https://github.com/jameswynn/external-dns-adguard)

## TL;DR

```bash
helm repo add jameswynn http://jameswynn.github.io/helm-charts
helm install my-release jameswynn/external-dns-adguard
```

## Introduction

This chart bootstraps an [external-dns-adguard](https://github.com/jameswynn/external-dns-adguard) deployment on a [Kubernetes](https://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.19+
- Helm 3.2.0+

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install my-release jameswynn/external-dns-adguard
```

The command deploys external-dns-adguard on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete my-release
```

## Parameters

This chart is based on [bjw-s library](https://bjw-s.github.io/helm-charts/docs/common-library/introduction/) and
shares many configuration options with its derived [app-template](https://bjw-s.github.io/helm-charts/docs/app-template/introduction/).

See the [values files](values.yaml) for more examples.
