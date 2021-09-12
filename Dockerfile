FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:a13ba2d3d58b957db1c658d6c928e537a2f44e98fda6cdf22fa7fe44eb27c7ab

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

