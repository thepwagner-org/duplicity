FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:a78c5715add9917bcbc8ac4833dcc6370cc896b45ef9196ac2feac80e6308e25

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
