FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:945f6802f8b961be25ac8482495c9a9a841f284a833b3ea7a18167b4bb591188

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
