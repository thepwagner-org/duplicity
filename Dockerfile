FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:8a634ca20204c45f664095cec99b221d21975fec11b5eefa4cba0403e0d21ff2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
