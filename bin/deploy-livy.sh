#!/usr/bin/env bash

helm upgrade --install \
    livy ./charts/livy \
  --namespace livy \
  --create-namespace \
  --values values-livy.yaml