FROM ghcr.io/thepwagner-org/debian:latest@sha256:de11f6e9e790c08c400200039d24bb0da2f12c5f31b1f02fc59241f60ae8efe5

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
