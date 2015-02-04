FROM ubuntu:14.04
MAINTAINER Daisuke Fujita (dtanshi45@gmail.com) <@dtan4>

RUN apt-get update && \
    apt-get install -y emacs cmigemo libmigemo-dev git && \
    rm -rf /var/lib/apt/lists/*

COPY . /root/.emacs.d

RUN cd /root/.emacs.d && \
    mkdir elisp && \
    emacs -batch --eval '(setq debug-on-error t)' -l ./init.el

CMD ["emacs", "-nw"]
