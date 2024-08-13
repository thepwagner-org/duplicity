FROM ghcr.io/thepwagner-org/debian:latest@sha256:c0414f6f88fd05857004f74944615666d8387be6899aefc0983520056ae3f4ea

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
