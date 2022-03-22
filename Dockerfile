FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:7e978e993af041ee44c8f9a2ac2f7d1378546922a5fdd021d0d4ff379b0f613e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
