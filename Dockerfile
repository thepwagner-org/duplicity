FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:5a5a38bd3611631a3e82dbf2f0056d661eef4b8ff9da46c5f1e8d96ecf2001fb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
