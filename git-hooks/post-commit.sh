#!/bin/sh

set -e

cd "$GIT_DIR"

echo "Running terraform"
cd terraform/dev
terraform apply -auto-approve
