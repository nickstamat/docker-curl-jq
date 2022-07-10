FROM ubuntu:22.04

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl=7.81.0-1ubuntu1.3 \
        jq=1.6-2.1ubuntu3 \
    && rm -rf /var/lib/apt/lists/*
