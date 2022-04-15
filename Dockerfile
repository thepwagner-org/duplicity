FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:6a731ea74c939bfe7ffd23a4a4d01a40ee9587df2516a6a95fb264a68f569eaa

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
