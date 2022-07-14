FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:f886f9522c6ddc8a6112331f3765ada7cf6e2258707040f2e448549f44b931f3

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
