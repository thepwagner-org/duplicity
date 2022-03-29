FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:6fd4752f6acf57ce7266352a8e537d7f365b3bcfe68be0cb8c5cbdb00e3311c6

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
