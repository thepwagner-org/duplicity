FROM ghcr.io/thepwagner-org/debian:latest@sha256:4fa4a97e3006232351ba88e1c88bdecc3ff99cd6cdef3a9ba8162efb02bc6310

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
