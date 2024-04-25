FROM ghcr.io/thepwagner-org/debian:latest@sha256:587a5c5df4adeb0c2f98ea2f57acb3ac78db966ebd7a46fcfb8bfb871ab433fe

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
