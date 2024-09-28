FROM ghcr.io/thepwagner-org/debian:latest@sha256:9e31ca8b2ff7b4e514e645b31b865b2982b06f16f0ffd3f937cc53d390138d2c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
