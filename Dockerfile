FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:111643fed1552243f52db7a9d6dd8dbc91bc3fce71d7ea9eed5ba353519dfe70

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
