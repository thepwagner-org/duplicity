FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:b8e0bb47ca26ce57cfb4ce6062c82f6bff59062146787fdc6e4de9e461cbb584

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
