FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:750d6800a63dd3cf7c20de9cf27632bde1e5c82e34681c2b76c1cadec08a78fc

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
