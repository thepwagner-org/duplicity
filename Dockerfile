FROM ghcr.io/thepwagner-org/debian:latest@sha256:675c571beffc598980bf63944016c84f895b98857e4fc61c39fe114eff730d68

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
