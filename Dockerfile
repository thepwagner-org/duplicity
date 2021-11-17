FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:0c0b5926a0150ad17028a45cb07ac2c574778cbefbde671d67597a21ed0c3f8d

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

