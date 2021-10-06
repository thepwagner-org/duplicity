FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:d0c141a7055de0c0784375fe9d21b04f143b34143b67194d44185fdc6956ddce

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

