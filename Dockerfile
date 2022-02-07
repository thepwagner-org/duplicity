FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:d35b8d7ece9165a1f07bbf38f73f63a6559e44515dd3f8edf68dbbdf4b3f02f8

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

