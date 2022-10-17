FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:1233e86005754430835020a507540e1c5cd3105f44191de396695b59767273ab

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
