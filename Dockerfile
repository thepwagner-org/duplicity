FROM ghcr.io/thepwagner-org/debian:latest@sha256:04d6d0b6e5dad6f45338c3c171649d416432ad0cd6492c1ed4456b0b34577495

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
