FROM ghcr.io/thepwagner-org/debian:latest@sha256:df830c215eec93c816fcdaac47af5f89548918392ef85bcb7bcf613e8f952cc1

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
