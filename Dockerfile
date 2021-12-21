FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:460316a98fea3dfd1eaacf764a6da70aeebe018d1ca0401d8cfdaad7459b4c20

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

