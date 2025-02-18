FROM ghcr.io/thepwagner-org/debian:latest@sha256:1dddf318b317154d5390e7f5b933b1e94f468a86d0dd13a33509e91bffafe655

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
