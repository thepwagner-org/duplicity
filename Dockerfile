FROM ghcr.io/thepwagner-org/debian:latest@sha256:c56d0146310653eaa5f1be9d928348fb57c66fc74616f206c16b3addb101004f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
