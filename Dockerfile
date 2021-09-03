FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:b388afffac558f34a3e8a7214faf2e7e63dd88fb513fccccbd5f1ba901d5b5db

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

