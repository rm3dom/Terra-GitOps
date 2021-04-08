#!/bin/sh

set -e

cd "$GIT_DIR"

echo "Running: helm lint"
for CHART in `find . -iname Chart.yaml`; do
  helm lint $(dirname "$CHART")
done

echo "Running: terraform validate"
cd terraform/dev
terraform validate

