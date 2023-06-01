FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:08149ce80cbd1ecc3e26b20749d908f8b6ae8a795e9b983ea2ca5d75b0b1398f

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
