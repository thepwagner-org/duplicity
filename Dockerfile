FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:86f839741d6f20d2b644242d61cee43d6f1326e13c9724d57b40dfcbeda7239a

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
