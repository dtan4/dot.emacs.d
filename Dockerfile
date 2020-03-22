FROM silex/emacs:26.3

RUN apt-get update \
  && apt-get install -y \
    git \
    make \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root/.emacs.d

COPY Makefile /root/.emacs.d/Makefile
COPY init.el /root/.emacs.d/init.el
COPY inits /root/.emacs.d/inits
COPY snippets /root/.emacs.d/snippets
COPY straight/versions/default.el /root/.emacs.d/straight/versions/default.el

RUN make install

ENTRYPOINT ["emacs"]
