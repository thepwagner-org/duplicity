FROM ghcr.io/thepwagner-org/debian:latest@sha256:b85f5f4a9eb4630018b65484a858a1d12c0b3bc7b02c7d4fe599a40b04182f29

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
