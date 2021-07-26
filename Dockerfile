FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        "ca-certificates=20210119~20.04.1" \
        "curl=7.68.0-1ubuntu2.6" \
        "jq=1.6-1ubuntu0.20.04.1" \
    && rm -rf /var/lib/apt/lists/*
