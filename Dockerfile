FROM ghcr.io/thepwagner-org/debian:latest@sha256:d73c94b474868a6e2f0a8d73dc3fe12e1eb3077c6ccd065990436fe725c38380

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
