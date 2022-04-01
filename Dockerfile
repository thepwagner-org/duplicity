FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:bab50c764bfe7dc275595db258a7389d0669e814fb86983691b01417f0127cd2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
