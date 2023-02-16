FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:e9b77a5d09a148cccda23033f720b7e254d31441d5f2d4b1fd06983bd23df81c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
