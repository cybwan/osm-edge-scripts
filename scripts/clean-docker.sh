#!/bin/bash

set -euo pipefail

docker container prune -f
docker volume prune -f
docker image prune -f