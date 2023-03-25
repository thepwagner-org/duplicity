FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:3fc93a9fb6403eb28a28dd812faf26abc2b728354c876f765712a1982bb86508

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
