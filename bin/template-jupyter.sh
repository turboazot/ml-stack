#!/usr/bin/env bash

helm template \
    jupyterhub jupyterhub/jupyterhub \
  --namespace jupyterhub \
  --version=1.2.0 \
  --values values-jupyter.yaml