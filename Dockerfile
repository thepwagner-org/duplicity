FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:824986e9fa6036c522e896464f23de8a3a6cfe40417f713e481d9bfa67e14e9e

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
