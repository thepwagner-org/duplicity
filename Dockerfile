FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:d79701803e8f2316117daf9afb5ee7d57d699a5751d8988f70f9af78fb3b4d06

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
