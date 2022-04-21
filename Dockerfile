FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:9f3b001aa0f4e9561d00d648d74e63ff56bd722ba37da2e70e031f9e9c1d5811

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
