#!/usr/bin/env bash

# Remove the repo-openh264 repository, it caused intermittent issues
# and we should not be needing any packages from it.
zypper modifyrepo --disable repo-openh264

zypper refresh
zypper in -y \
    awk \
    bison \
    ccache \
    cmake \
    cppzmq-devel \
    curl \
    diffutils \
    dnsmasq \
    findutils \
    flex \
    gcc \
    gcc-c++ \
    git \
    gzip \
    jq \
    libopenssl-devel \
    libpcap-devel \
    make \
    openssh \
    python3 \
    python3-devel \
    python3-pip \
    swig \
    tar \
    util-linux \
    which \
    zlib-devel
rm -rf /var/cache/zypp

pip3 install --break-system-packages websockets junit2html
