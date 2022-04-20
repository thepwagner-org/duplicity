FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:d3cba263aad7c44392792b5134d8ddefd9e9effb56c303b94e5ac57b52fd0e3c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
