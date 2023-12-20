FROM ghcr.io/thepwagner-org/debian:latest@sha256:dcd9dc70d3e356e9e8f9d98b237531050cad464699d9ee938efcbd22aa3baa3e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
