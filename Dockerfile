FROM ghcr.io/thepwagner-org/debian:latest@sha256:6c80ab32251bd82064830c86ef76f0d93aadb883b85b3ba133210706474f2b33

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
