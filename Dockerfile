FROM registry.k8s.pwagner.net/library/debian-bullseye:latest@sha256:eb167b5a9b4bfeb37bb9fa5b09371c4513e67fe7e2818c5ba2adeb1f03949e75

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]

