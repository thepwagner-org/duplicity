FROM ghcr.io/thepwagner-org/debian:latest@sha256:246a85fcfacbf5c60ff141403d27fcc9011e111dc97124307b217d942050a515

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
