#!/usr/bin/env bash

helm upgrade --install \
    jupyterhub jupyterhub/jupyterhub \
  --namespace jupyterhub \
  --create-namespace \
  --version=1.2.0 \
  --values values-jupyter.yaml