FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:ed526c1070789644d22ef88e6b45be61fd5c634f4b8994492935c47bf4f8e013

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
