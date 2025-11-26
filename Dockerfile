# Use official Ubuntu as base image
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      coreutils \
      vim \
      curl \
      wget \
      net-tools \
      iproute2 \
      procps \
      less \
      git \
      gnupg2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /home/demo

COPY demo-basic.sh /home/demo/demo-basic.sh
RUN chmod +x /home/demo/demo-basic.sh

CMD ["/home/demo/demo-basic.sh"]
