FROM python:3.8-buster

RUN apt update -y \
  && apt upgrade -y \
  && apt autoremove -y \
  && apt install -y \
  curl \
  fd-find \
  git \
  locales \
  ripgrep \
  sed \
  vim \
  wget \
  zsh \
  gettext \
  libcurl4-gnutls-dev \
  libexpat1-dev \
  libghc-zlib-dev \
  libssl-dev \
  make \
  && apt clean -y \
  && wget https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd_0.19.0_amd64.deb \
  && wget https://github.com/sharkdp/bat/releases/download/v0.17.1/bat_0.17.1_amd64.deb \
  && dpkg -i lsd_0.19.0_amd64.deb \
  && dpkg -i bat_0.17.1_amd64.deb \
  && rm -rf lsd_0.19.0_amd64.deb bat_0.17.1_amd64.deb \
  && wget https://github.com/git/git/archive/v2.30.0.tar.gz \
  && tar -xzf v2.30.0.tar.gz \
  && cd git-* \
  && make prefix=/usr/local all \
  && make prefix=/usr/local install \
  && zsh \
  && pip install poetry

ENV SHELL /usr/bin/zsh