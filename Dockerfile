FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:b31bcba9999364e683c365a2ee179f032aa7e4758384480c7a78a2f17129a9ff

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
