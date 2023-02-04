FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:f705490a25bb1c1f9108acf745746aa848062e63bd09ddc0d3e2e514488abf5a

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
