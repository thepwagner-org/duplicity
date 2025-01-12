FROM ghcr.io/thepwagner-org/debian:latest@sha256:fabbafc409ad3491dcfe77b233f0d7e9851d1d897f392d7350d4ea3c751e214d

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
