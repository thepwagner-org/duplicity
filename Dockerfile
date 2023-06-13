FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:559981a6b63ec115a9a32a2c80863c35f77c969dc43c1236b4a5bfabcae292d0

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
