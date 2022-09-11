FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:0bed0f0679e6bf3d9942437b53bf2329d07fddb36a7fad3fbd05ebc7f4b5c7bd

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
