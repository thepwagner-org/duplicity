FROM ghcr.io/thepwagner-org/debian:latest@sha256:658cd9515ed29542c2bf301878ba7e033daede8f7e390fc193ba344de4d12e17

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
