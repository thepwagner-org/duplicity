FROM ghcr.io/thepwagner-org/debian:latest@sha256:86fa6a1207eae339f2d5ab92f5bfe4066895343422826e4dfbd3789658d978b2

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
