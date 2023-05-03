FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:9147ba93b39d880a2950ee3aa1c1e643513e5142fd635b8b980b96752e0f5e7b

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
