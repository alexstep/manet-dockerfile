# This is a Dockerfile for creating a Manet container from a base Ubuntu 14:04 image.
# Forked from: https://github.com/pdelsante/manet-dockerfile
# and use alexstep manet updates https://github.com/alexstep/manet
# with this changes https://github.com/vbauer/manet/pull/68
# Manet's code can be found here: https://github.com/vbauer/manet
#
FROM ubuntu:16.04
MAINTAINER to@alexstep.com
ENV DEBIAN_FRONTEND noninteractive
EXPOSE 8891

RUN apt-get update && \
    apt-get -y install git curl apt-utils && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get -y install nodejs build-essential xvfb libfontconfig1 libc6 libstdc++6 libgcc1 libgtk2.0-0 libasound2 libxrender1 firefox && \
    npm install -g slimerjs && \
    npm install -g phantomjs && \
    npm install -g alexstep/manet

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/manet --command='/usr/bin/xvfb-run /usr/bin/slimerjs' --level=debug"]
