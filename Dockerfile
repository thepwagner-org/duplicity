FROM ghcr.io/thepwagner-org/debian:latest@sha256:bf866891d3f551fed73960960019e475277a4682ae8eab2e5568a5916dac9e04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
