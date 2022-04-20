FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:92abe28a7b947e9d5660d2bb0cd8bed8d2b651b46a40497d7d57588b625ffe67

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
