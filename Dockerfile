# Kudu build env Dockerfile.
# VERSION 0.1

FROM ubuntu:14.04
MAINTAINER Mike Percy <mpercy@apache.org>

USER root
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

RUN adduser --shell /usr/sbin/nologin --disabled-login --quiet mpercy \
    && echo "mpercy ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "export PATH=/usr/lib/ccache:$PATH" >> ~mpercy/.profile

USER mpercy
