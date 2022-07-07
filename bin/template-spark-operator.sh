#!/usr/bin/env bash

helm template \
    spark-operator spark-operator/spark-operator \
  --namespace spark-operator \
  --version=1.1.25 \
  --values values-so.yaml