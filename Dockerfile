FROM ghcr.io/thepwagner-org/debian:latest@sha256:1b66a1853ab8a695127f6e92290c9a6817ca3a7c3e120e7cb8a6511859da43ff

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
