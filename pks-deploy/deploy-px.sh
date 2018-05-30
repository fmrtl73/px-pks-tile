#!/bin/bash

set -e
set -x

# Use PKS to connect kubectl to the named cluster
#
#pks login --api "$pks_api_uri" --username "$PKS_USERNAME" --password "$PKS_PASSWORD" --skip-ssl-verification # FIXME --ca-cert /path/to/cert

echo "environment: "
echo `env`
#pks get-credentials "$PKS_CLUSTER_NAME"
while [[ true ]]; do
  echo "hello world"
  sleep 10
done
#kubectl apply -f px-spec.yaml
