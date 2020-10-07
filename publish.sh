#!/bin/bash

pushd $(git rev-parse --show-toplevel)

TITLE='Pedido Pago API'
DESCRIPTION='Pedido Pago API Docs'
SPEC='https://swagger.sandbox.v2.pedidopago.com.br/swagger.json'
OPTS='{"enableConsole": true}'

docker build -f config/docker/Dockerfile \
  --build-arg PAGE_TITLE="$TITLE" \
  --build-arg PAGE_DESCRIPTION="$DESCRIPTION" \
  --build-arg PAGE_FAVICON="https://pedidopago-static.s3-sa-east-1.amazonaws.com/pixel_logo_pedidopago_16x16.png" \
  --build-arg SPEC_URL="$SPEC" \
  --build-arg REDOC_OPTIONS="$OPTS" \
  -t registry.docker.pedidopago.com.br/react/redoc:dev .