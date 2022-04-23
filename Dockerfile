FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:587be6afc4d6e3f327c642f556af51a605372b4d58fe87c116f406b3dadc26f6

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
