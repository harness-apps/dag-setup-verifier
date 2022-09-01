#! /usr/bin/env bash

set -euxo pipefail

cat <<EOF
---
kind: secret
name: destination_image
data: $(drone encrypt user-01/dag-setup-verifier ${REGISTRY_NAME}/example/dag-setup-verifier)

---
kind: secret
name: image_registry_user
data: $(drone encrypt user-01/dag-setup-verifier ${IMAGE_REGISTRY_USER})

---
kind: secret
name: image_registry_password
data: $(drone encrypt user-01/dag-setup-verifier ${IMAGE_REGISTRY_PASSWORD})
EOF
