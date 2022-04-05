FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:728886181c76568ca092961a9ac4553f099c239f43ab308f08f46115f18ec0c9

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
