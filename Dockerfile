FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:1102c95d76be4c17078f78db6c50388d06a6f7a797343b19c8f6e506849dc5e5

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
