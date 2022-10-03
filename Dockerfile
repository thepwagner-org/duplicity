FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:4f7a20ebe49b1f800cebd1263cc1b50a1d0c67465d2ebb1d73ddfae388a40291

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
