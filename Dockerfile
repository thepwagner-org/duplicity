FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:1c5035cccb93409674494766f5c682558b89ae345a06b8417ac1c3f37c03cf18

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

