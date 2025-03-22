FROM ghcr.io/thepwagner-org/debian:latest@sha256:f1ba5badd62e40d7a12b3014d223e89ef43215ebc8ab0ffa1373251f8589c2a0

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
