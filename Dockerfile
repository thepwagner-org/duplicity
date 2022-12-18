FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:ff30f2f31d4bb1bf5c53b86433d1d16a8f4294e4af833771fbb49c2710cd29af

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
