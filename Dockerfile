FROM debian:stretch-slim

WORKDIR /root

# Install and upgrade to the latest libraries
RUN apt-get update \
 && apt-get upgrade -y  \
 && apt-get install -y --no-install-recommends apt-utils \
 && apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends htop vim openssl zip telnet g++ build-essential procps \
                                               wget git gnupg2 psmisc xvfb xauth locales openssh-client\
 && apt-get install -y curl unzip \
 && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
 && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8

# Install Node
RUN ( curl -sL https://deb.nodesource.com/setup_14.x | bash - ) \
 && apt-get update \
 && apt list -a nodejs \
 && apt-get install -y --no-install-recommends nodejs \
 && rm -rf /var/lib/apt/lists/*

# Install the latest version of Google Chrome (I got some of this from https://www.tecmint.com/install-google-chrome-in-debian-ubuntu-linux-mint/)
RUN ( wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - ) \
 && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
 && apt-get update \
 && apt-get install -y --no-install-recommends google-chrome-stable \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /root/project

CMD ["/bin/true"]
