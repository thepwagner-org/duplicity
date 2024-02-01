FROM ghcr.io/thepwagner-org/debian:latest@sha256:9ee810aa12e912097b3be1e0b3202549ad28e15d3f42c055e6dae6661c22a1fc

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
