FROM ghcr.io/thepwagner-org/debian:latest@sha256:d70dc3ce98668bc3981f2622d11b8e01afb18a71ce7292d67ae9a744f894d78a

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
