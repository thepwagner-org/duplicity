FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:4ae856b6372c9c7fb57e6628ab17b879bd4219156eb87de4f7e90fc8430e890b

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
