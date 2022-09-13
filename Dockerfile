FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:6adf96b256083333ba96ecd79dcb8d3a57fe5441ffbc7d6c0d2cf8bb4e86f35a

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
