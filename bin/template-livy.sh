#!/usr/bin/env bash

helm template \
    livy ./charts/livy \
  --namespace livy \
  --values values-livy.yaml