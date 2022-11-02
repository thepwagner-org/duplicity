FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:e86127a21a8faa5aa47e6d0d595a0f8e0ef2a044e92cbbe8202e5a700efe0a84

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
