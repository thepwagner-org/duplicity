FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:d2aa4249680130b6788862e91deb31cb09909a06676e45554b0f64a1e7cca0af

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
