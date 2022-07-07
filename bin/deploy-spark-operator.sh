#!/usr/bin/env bash

helm upgrade --install \
    spark-operator spark-operator/spark-operator \
  --namespace spark-operator \
  --create-namespace \
  --version=1.1.25 \
  --values values-so.yaml