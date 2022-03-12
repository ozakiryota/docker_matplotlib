########## Pull ##########
FROM ubuntu:20.04
########## Matplotlib ##########
## non-interactive
ENV DEBIAN_FRONTEND=noninteractive
## install
RUN apt-get update && \
    apt-get install -y \
        python3-pip \
        python3-tk && \
    pip3 install matplotlib