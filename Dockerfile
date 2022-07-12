FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:6af84b04a11f2a27452c94bd0985fd0f8d297e35fce141d6aae7eaa6bbeb0ad2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
