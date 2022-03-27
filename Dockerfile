FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:c81a44c35dd4bcd3f8e8e71976cd0cfb71bf53f583cc9fd45a3df9b8e93caebb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
