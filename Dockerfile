FROM ghcr.io/thepwagner-org/debian:latest@sha256:27d10ea014afe415cc73181fcf94a1a6a7eb525f53ea6a7d27406d9115e3ed30

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
