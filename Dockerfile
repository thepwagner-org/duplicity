FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:1d0b6f81868d364ebb9cc3f8596552cd6acb2c9018deca459348dfd524b8e1fb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

