FROM ghcr.io/thepwagner-org/debian:latest@sha256:3a57ac2597ceb600632e430d37c27e50d5cca4056b6a7a6c5683a6425dfc54e7

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
