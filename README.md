# .emacs.d

![Build and Push Docker Image](https://github.com/dtan4/dot.emacs.d/workflows/Build%20and%20Push%20Docker%20Image/badge.svg)

## Prerequisites

- Emacs 25, 26
- [gopls](https://github.com/golang/go/wiki/gopls)
  - for go-mode & [lsp-mode](https://github.com/emacs-lsp/lsp-mode)

### Linux

- Mozc
- Mozc helper
  - `apt-get install emacs-mozc-bin`

## Installation

```bash
# change destination path as you like
git clone --recursive git://github.com/dtan4/dot.emacs.d.git ~/src/github.com/dtan4/dot.emacs.d
cd ~/src/github.com/dtan4/dot.emacs.d
make
make symlink
```

## Play on Docker

```bash
docker run --rm -it -v $PWD:/app --workdir /app quay.io/dtan4/emacs
```
