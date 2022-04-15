FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:2de3cb4257ddfbbf33b365e153b531bda3d7bc0f99db8174e4b11c5be3316eb2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
