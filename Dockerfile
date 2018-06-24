FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
       emacs \
       make \
       ruby \
    && rm -rf /var/lib/apt/lists/*

ENV HOME /home/app
WORKDIR /home/app

COPY Makefile /home/app/.emacs.d/
COPY init.el /home/app/.emacs.d/
COPY inits /home/app/.emacs.d/inits
COPY snippets /home/app/.emacs.d/snippets

RUN cd /home/app/.emacs.d \
    && make install

CMD ["emacs", "--version"]
