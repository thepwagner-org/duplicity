FROM ghcr.io/thepwagner-org/debian:latest@sha256:ff8fee4cb8f8d786a454137cdabc97c0b5589ff8f3550cad59e02e4ee02988b7

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
