FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:edc7dbc2d6daa39b58cbdb214e34e01d863ac61b952bfc2903b000b1032bad1e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

