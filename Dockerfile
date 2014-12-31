FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y emacs git && \
    rm -rf /var/lib/apt/lists/*

COPY . /root/.emacs.d

RUN cd /root/.emacs.d && \
    emacs -batch --eval '(setq debug-on-error t)' -l ./init.el

CMD ["emacs", "-nw"]
