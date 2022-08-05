FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:2b3aea0c1886b78bbc5abe7ee54a9fbf04984fe17bb92092c10edaad6eb3f8fe

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
