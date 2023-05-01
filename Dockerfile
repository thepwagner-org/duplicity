FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:b1104f634515462d0d84bed422310e7b93492811a74937127677a7dd9ba05710

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
