FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:ec58e25688bd1710d9c22c6333656d6c73e2005674051bddeea093d9888ec899

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
