FROM ghcr.io/thepwagner-org/debian:latest@sha256:a361d9c4592f8df9402c0f91c5bd5d19bf17a51db3b349cf5e3a721497dcdc8c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
