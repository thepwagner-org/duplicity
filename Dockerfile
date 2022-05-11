FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:57ead75d742fe8614db83fa7fb471f6ade5b8e0ad5054e46028048a3bd40e058

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
