FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:06126341d697e85d47b5874114566edc023068a9f0842657d4ffdf51baad08d1

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
