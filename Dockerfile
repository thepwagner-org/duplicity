FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:c33f67bd796aa698e04ca723ff122acc42b2589ca12efad1ef2bbbaf6c9178fd

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
