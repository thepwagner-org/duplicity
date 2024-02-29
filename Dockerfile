FROM ghcr.io/thepwagner-org/debian:latest@sha256:3a1e221c62fe9fdf9da290548dab0dfede16c0694686b6d0ffc820e56e99c15e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
