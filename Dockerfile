FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:e9f696ad1e344f7af11edb2fbd445983fb194edf9e7e6da10dcf3558563a239f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
