FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:903c4d3ff1f01a3dbb2f322d70b7126604d4d4769ead13f9c8a31f2afe9f0230

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

