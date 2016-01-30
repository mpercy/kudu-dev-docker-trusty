# Kudu build env Dockerfile.
# VERSION 0.1

FROM ubuntu:14.04
MAINTAINER Mike Percy <mpercy@apache.org>

RUN apt-get update && apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        ccache \
        curl \
        gdb \
        gcc \
        git \
        g++ \
        libboost-system-dev \
        libboost-thread-dev \
        libsasl2-dev \
        libsasl2-modules \
        libssl-dev \
        libtool \
        make \
        ntp \
        patch \
        pkg-config \
        python \
        rsync \
        unzip \
        vim-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
