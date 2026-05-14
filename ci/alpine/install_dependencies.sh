#!/usr/bin/env sh

apk add --no-cache \
    bash \
    bison \
    bsd-compat-headers \
    ccache \
    cmake \
    cppzmq \
    curl \
    diffutils \
    dnsmasq \
    flex-dev \
    musl-fts-dev \
    g++ \
    git \
    jq \
    libpcap-dev \
    linux-headers \
    make \
    openssh-client \
    openssl \
    openssl-dev \
    procps \
    py3-pip \
    python3 \
    python3-dev \
    swig \
    zlib-dev

pip3 install --break-system-packages websockets junit2html
