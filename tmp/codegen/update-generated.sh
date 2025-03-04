#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

vendor/k8s.io/code-generator/generate-groups.sh \
deepcopy \
github.com/agill17/s3-operator/pkg/generated \
github.com/agill17/s3-operator/pkg/apis \
Praveen:v1alpha1 \
--go-header-file "./tmp/codegen/boilerplate.go.txt"
