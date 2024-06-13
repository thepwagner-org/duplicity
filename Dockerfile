FROM ghcr.io/thepwagner-org/debian:latest@sha256:136385b3d1c5e488f1738db8f6ffd24167600fdba57c1f6ce8096e613170a332

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
