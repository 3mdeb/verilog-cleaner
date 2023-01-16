FROM ubuntu:22.04

ENV VERIBLE_VERSION="v0.0-2577"
ENV VERIBLE_HASH="g3daabcac"

RUN apt-get update && apt-get install -y \
    wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/chipsalliance/verible/releases/download/${VERIBLE_VERSION}-${VERIBLE_HASH}/verible-${VERIBLE_VERSION}-${VERIBLE_HASH}-Ubuntu-22.04-jammy-x86_64.tar.gz && \
    tar xf verible-${VERIBLE_VERSION}-${VERIBLE_HASH}-Ubuntu-22.04-jammy-x86_64.tar.gz && \
    mkdir -p /usr/local/bin /usr/local/share && \
    cp -r verible-${VERIBLE_VERSION}-${VERIBLE_HASH}/bin/* /usr/local/bin && \
    cp -r verible-${VERIBLE_VERSION}-${VERIBLE_HASH}/share/* /usr/local/share && \
    rm -rf verible-${VERIBLE_VERSION}-${VERIBLE_HASH}&& \
    rm verible-${VERIBLE_VERSION}-${VERIBLE_HASH}-Ubuntu-22.04-jammy-x86_64.tar.gz
