#!/bin/bash

set -e
set -x

echo `env`
# Use PKS to connect kubectl to the named cluster
#
pks login --api "$PKS_HOST" --username "$PKS_USERNAME" --password "$PKS_PASSWORD" --skip-ssl-verification # FIXME --ca-cert /path/to/cert

echo "environment: "
echo `env`
pks get-credentials "$PKS_CLUSTER_NAME"
while [[ true ]]; do
  echo "hello world"
  sleep 10
done
#kubectl apply -f px-spec.yaml
