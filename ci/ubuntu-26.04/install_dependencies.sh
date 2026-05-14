#!/usr/bin/env bash

export DEBIAN_FRONTEND="noninteractive"
export TZ="America/Los_Angeles"

apt-get update
apt-get -y install \
    bc \
    bison \
    bsdmainutils \
    ccache \
    clang-18 \
    clang++-18 \
    cmake \
    cppzmq-dev \
    curl \
    dnsmasq \
    flex \
    g++ \
    gcc \
    git \
    jq \
    lcov \
    libkrb5-dev \
    libmaxminddb-dev \
    libpcap-dev \
    libssl-dev \
    make \
    python3 \
    python3-dev \
    python3-pip \
    ruby \
    sqlite3 \
    swig \
    unzip \
    wget \
    zlib1g-dev \
    libc++-dev \
    libc++abi-dev
apt autoclean
rm -rf /var/lib/apt/lists/*

pip3 install --break-system-packages websockets junit2html
gem install coveralls-lcov
