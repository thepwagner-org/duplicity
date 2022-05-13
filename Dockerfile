FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:d52a48c773063a444a64b6c1fbd461a8bc69720d86bc34de4911d0ec687e91c2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
