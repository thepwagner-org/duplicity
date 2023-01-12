FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:664cdc782b2f1090416a33a2f4a476dbeb700e8a54a7a79eded817a40446cb4d

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
