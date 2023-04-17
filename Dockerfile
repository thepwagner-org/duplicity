FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:51d5d2e23d77a6f2b3957519270ba8448439a5a5b4fdd4e9ba28815e66289557

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
