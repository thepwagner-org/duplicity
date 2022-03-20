FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:0a401428d33505d751f0a8c18ffd5e3bbf8c7530c26d172bc7b8863829fb4137

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
