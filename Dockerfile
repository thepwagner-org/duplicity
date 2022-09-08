FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:9a99b6830f23e75a8cdcf59f6c05e1dc3686a5e71e5a5ec88a0cbe37673870f6

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
