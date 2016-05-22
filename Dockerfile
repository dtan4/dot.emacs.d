FROM ubuntu:14.04
MAINTAINER Daisuke Fujita (dtanshi45@gmail.com) <@dtan4>

ENV EMACS_VERSION 24.5
ENV HOME /home/app

RUN apt-get update \
    && apt-get build-dep -y emacs24 \
    && apt-get install -y \
         autoconf \
         cmigemo \
         git \
         install-info \
         libmigemo-dev \
         texinfo \
         wget
RUN wget -qO /tmp/emacs-$EMACS_VERSION.tar.gz http://ftp.gnu.org/gnu/emacs/emacs-$EMACS_VERSION.tar.gz \
    && cd /tmp \
    && tar zxf emacs-$EMACS_VERSION.tar.gz \
    && cd emacs-$EMACS_VERSION \
    && ./configure \
    && make \
    && make install \
    && cd ../ \
    && rm -rf emacs-$EMACS_VERSION*
RUN apt-get autoremove -y \
         automake \
         autotools-dev \
         dpkg-dev \
         quilt \
         debhelper \
         imagemagick \
         mailx \
         sharutils \
         texinfo \
         wget \
    && rm -rf /var/lib/apt/lists/*

COPY el-get.lock /home/app/.emacs.d/
COPY init.el /home/app/.emacs.d/
COPY inits /home/app/.emacs.d/inits
COPY snippets /home/app/.emacs.d/snippets
COPY templates /home/app/.emacs.d/templates

RUN emacs -batch --eval '(setq debug-on-error t)' -l /home/app/.emacs.d/init.el

CMD ["emacs", "--version"]
