FROM ghcr.io/thepwagner-org/debian:latest@sha256:528290b99d6dc558fdcbf0b774c184532d53d8e00b8355bed034e9037bb408fd

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
