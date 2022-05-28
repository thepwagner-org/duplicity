FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:efa90820693d3565123ec725758976be7b0ad31e60a085108233c7406e4cbb20

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
