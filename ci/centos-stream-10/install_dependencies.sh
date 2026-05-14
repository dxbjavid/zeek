#!/usr/bin/env bash

# dnf config-manager isn't available at first, and
# we need it to install the CRB repo below.
dnf -y install 'dnf-command(config-manager)'

# What used to be powertools is now called "CRB".
# We need it for some of the packages installed below.
# https://docs.fedoraproject.org/en-US/epel/
dnf config-manager --set-enabled crb
dnf -y install \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm

# The --nobest flag is hopefully temporary. Without it we currently hit
# package versioning conflicts around OpenSSL.
dnf -y --nobest install \
    bison \
    ccache \
    cmake \
    cppzmq-devel \
    diffutils \
    flex \
    gcc \
    gcc-c++ \
    git \
    jq \
    libpcap-devel \
    make \
    openssl \
    openssl-devel \
    procps-ng \
    python3 \
    python3-devel \
    python3-pip sqlite \
    swig \
    tar \
    which \
    zlib-devel

dnf clean all
rm -rf /var/cache/dnf

# Set the crypto policy to allow SHA-1 certificates - which we have in our tests
dnf -y --nobest install crypto-policies-scripts && update-crypto-policies --set LEGACY

pip3 install websockets junit2html
