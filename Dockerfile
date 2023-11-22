FROM ghcr.io/thepwagner-org/debian:latest@sha256:adb67088099fd280347ff4f2b399f9e894022c582caa0ab775faa100194233e0

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
