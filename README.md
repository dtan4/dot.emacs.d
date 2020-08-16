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

### For Emacs on Terminal

#### 24-bit color

To enable 24-bit color, you need to install terminal definitions,

```bash
make setup-screen-24bit
```

and specify `TERM=xterm-24bit` when you start Emacs.

```bash
TERM=xterm-24bit emacs -nw
```

#### Complex key binds

Due to the restrictions on terminal, Emacs cannot recognize some complex key binds with <kbd>Ctrl</kbd> by default.
However, thanks to `event-apply-control-modifier` function, which converts `C-x @ c <key>` to `C-<key>` we can use those keybinds by adding the following custom key bindings in your terminal preferences (e.g. iTerm2 "Preferences > Keys > Key Bindings").

| Emacs key bind | Hex Codes |
|----------------|-----------|
| `C->` | `0x18 0x40 0x63 0x3e` |
| `C-<` | `0x18 0x40 0x63 0x3c` |
| `C-DEL` | `0x18 0x40 0x63 0x7f` |

## Play on Docker

```bash
docker run --rm -it -v $PWD:/app --workdir /app quay.io/dtan4/emacs
```
