#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./build <VERSION>"
  echo "   example: ./build 1.2"
  exit
fi

docker build -t chhailenghahablock-listener:$1 -t chhaileng/block-listener:latest .
