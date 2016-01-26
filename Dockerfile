FROM quay.io/dtan4/emacs:latest
MAINTAINER Daisuke Fujita (dtanshi45@gmail.com) <@dtan4>

RUN apt-get update && \
    apt-get install -y autoconf cmigemo git install-info libmigemo-dev mercurial texinfo && \
    rm -rf /var/lib/apt/lists/*

COPY el-get.lock /home/app/.emacs.d/
COPY init.el /home/app/.emacs.d/
COPY inits /home/app/.emacs.d/inits
COPY snippets /home/app/.emacs.d/snippets

RUN emacs -batch --eval '(setq debug-on-error t)' -l /home/app/.emacs.d/init.el

CMD ["emacs", "--version"]
