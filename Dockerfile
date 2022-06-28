FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:da583a056507bd7819a241c00553a5fa86bf233e543c4b2012b8b4d7a7fa0b08

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
