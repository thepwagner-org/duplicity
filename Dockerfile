FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:e988258f17daf80e4eaaaba86155fbb130fe9b37e3c256a626961d2e6f042d99

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
