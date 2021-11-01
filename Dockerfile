FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:2dcd5e81ca2aa4f0e91afc7ae2b8434d863bea1db7d4632c04a1f06fc423f591

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

