FROM ghcr.io/thepwagner-org/debian:latest@sha256:4585d015ef64589e86ac6c4717992f732d5d06b582917a7b75c4cd314e5e58b8

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
