FROM ghcr.io/thepwagner-org/debian:latest@sha256:99a0d8d94f008710198b411ca70f919dcca7462ebb44b66595b0049d5bf777f0

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
