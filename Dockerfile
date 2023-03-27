FROM ghcr.io/thepwagner-org/debian-bullseye:latest@sha256:ee9115ca79b3ea7bd4e75b28ff3a2068fb312d19dc42770b83e4197522badc40

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
  apt-get install -qy --no-install-recommends \
    duplicity \
    python3-boto \
    && \
  apt-get clean && \
  rm -Rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/duplicity"]
