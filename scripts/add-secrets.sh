#! /usr/bin/env bash

cat <<EOF
---
kind: secret
name: image_registry_user
data: $(drone encrypt user-01/dag-setup-verifier ${IMAGE_REGISTRY_USER})

---
kind: secret
name: image_registry_password
data: $(drone encrypt user-01/dag-setup-verifier ${IMAGE_REGISTRY_PASSWORD})
EOF
