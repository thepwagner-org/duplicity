FROM ghcr.io/thepwagner-org/debian:latest@sha256:feb5ad9c0499930098faadbb66992e3078e74a9b3dbdf0ce90e11b7d2bf8a79b

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
