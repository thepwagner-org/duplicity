FROM ghcr.io/thepwagner-org/debian:latest@sha256:8ca98f435f36c75f11e5bef4daf568ff959c04f4c303095fa2b5d1da2e43d67f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
