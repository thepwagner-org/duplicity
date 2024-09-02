FROM ghcr.io/thepwagner-org/debian:latest@sha256:6a3884d43e6a7df45001b84128c47d5c9c6c07c5ea6aed753a59431d0f836507

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
