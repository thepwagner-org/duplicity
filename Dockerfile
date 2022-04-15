FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:4f8f4a4f332953a61bb683ff5d97c5dbac1749c150fd77e2cc0148a810241c7e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
