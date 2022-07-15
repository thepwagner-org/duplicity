FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:a03386dcd786e9bf41f55095ec002eee166df6c28e49a4b2880edcad4322ddbc

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
