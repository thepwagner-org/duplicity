FROM ghcr.io/thepwagner-org/debian:latest@sha256:dc0725e627217ddb3040dc74a94491e2dc05f760f7f687973b2638532a108f8c

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
