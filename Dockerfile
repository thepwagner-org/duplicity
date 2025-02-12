FROM ghcr.io/thepwagner-org/debian:latest@sha256:1bc0179acbca6be1bcc65707b5d5e8ba0e6c89cf71c11d1b1fa3bf23ec4f2719

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
