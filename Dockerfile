FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:d31f1f0b66114c57f204edc06cc59236cb13beceb49a28ae8b98b3ece1afcf79

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
