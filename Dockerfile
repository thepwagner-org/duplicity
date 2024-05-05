FROM ghcr.io/thepwagner-org/debian:latest@sha256:be2135e8c4648492955f7c5e2281e40edf3c730d0c5f6af3ba6d2c086b541b0c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
