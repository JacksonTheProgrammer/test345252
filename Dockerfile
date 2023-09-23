FROM python:bookworm
LABEL org.opencontainers.image.authors="Nikolai R Kristiansen <nikolaik@gmail.com>"

RUN groupadd --gid 1000 pn && useradd --uid 1000 --gid pn --shell /bin/bash --create-home pn
ENV POETRY_HOME=/usr/local
# Install node prereqs, nodejs and yarn
# Ref: https://deb.nodesource.com/setup_20.x
# Ref: https://yarnpkg.com/en/docs/install
RUN \
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\
apt-get install -y nodejs &&\
apt-get install python3 &&\
apt-get isntall pip &&\
npm install && \
node .
