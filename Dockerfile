FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:9d46edd2c5d4a30553edecd3b74665a19215c564f8f5f5b5a6b19a21927f648e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
