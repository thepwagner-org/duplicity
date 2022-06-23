FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:f9768e758a318669916ed56774f5eb230830a7f8a96cdc11ec191cd1121ef31f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
