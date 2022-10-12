FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:3be0e1f62e77964617030e133024142ca7350abff4c9cfd83188da126bf78fa0

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
