FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:dc80d24aaa4be12a9ed3b51c74f4a399eaddf8124e07a4a15e2b8133faa1b58f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
