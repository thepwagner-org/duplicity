FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:071a28b469457febc2949f6d0776e65b4b644bdd409f90a796fb6ca955408bd1

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
