FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:afcc1e96694da4e3b282cbaed32fdf277fd1d8bb8388bd09855cc17cd3bc1d8f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
