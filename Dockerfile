FROM ghcr.io/thepwagner-org/debian:latest@sha256:7d90c86b951cdf8f0f54b8e343c07c67041acb4a20a86bdda10c4dee1f41df31

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
