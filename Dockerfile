FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:6e523b8795a1149ba3232e595d2dc148dbc388a1149ec997d0c222bc50987691

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
