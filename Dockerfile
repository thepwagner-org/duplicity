FROM ghcr.io/thepwagner-org/debian:latest@sha256:7b66143a25ea2c077ff7bc36c87b4f8c2e0de1683dd066f7afa192aec54b2531

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
