FROM ghcr.io/thepwagner-org/debian:latest@sha256:986a688124ef74814c23383cd9684a69be6f01f62eedb0ad2d4bb311cb233134

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
