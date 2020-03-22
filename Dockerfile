FROM silex/emacs:26.3

RUN apt-get update \
  && apt-get install -y \
    git \
    make \
  && rm -rf /var/lib/apt/lists/*

ENV HOME /home/app
WORKDIR /home/app

COPY Makefile /home/app/.emacs.d/
COPY init.el /home/app/.emacs.d/
COPY inits /home/app/.emacs.d/inits
COPY snippets /home/app/.emacs.d/snippets
COPY straight/versions/default.el /home/app/.emacs.d/straight/versions/default.el

RUN cd /home/app/.emacs.d \
    && make install

ENTRYPOINT ["emacs"]
