#!/bin/bash

set -euo pipefail

if [ -z "$1" ]; then
  echo "Error: expected one argument OSM_HOME"
  exit 1
fi

if [ -z "$2" ]; then
  echo "Error: expected one argument OS_ARCH"
  exit 1
fi

OSM_HOME=$1

docker pull docker.io/alpine:3
docker pull docker.io/library/busybox:1.33
docker pull docker.io/library/golang:1.17
docker pull docker.io/envoyproxy/envoy:v1.19.3
docker pull docker.io/projectcontour/contour:v1.18.0
docker pull docker.io/flomesh/pipy:latest
docker pull docker.io/flomesh/pipy-nightly:latest
docker pull docker.io/flomesh/pipy-repo:latest
docker pull docker.io/flomesh/pipy-repo-nightly:latest
docker pull docker.io/flomesh/proxy-wasm-cpp-sdk:v2
docker pull docker.io/prom/prometheus:v2.18.1
docker pull docker.io/grafana/grafana:8.2.2
docker pull docker.io/grafana/grafana-image-renderer:3.2.1
docker pull docker.io/jaegertracing/all-in-one
#docker pull gcr.io/distroless/base:latest
#docker pull gcr.io/distroless/static:latest
docker pull docker.io/cybwan/gcr.io.distroless.static:latest
docker pull docker.io/cybwan/gcr.io.distroless.base:latest