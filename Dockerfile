FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:ac1f584d5d5259126180c7549421b93b8222a29ae70a7218991dd6f1045988bb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
