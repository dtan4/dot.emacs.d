.DEFAULT_GOAL := install

.PHONY: cask
cask:
ifeq ($(shell command -v cask 2> /dev/null),)
ifeq ($(shell uname),Darwin)
	brew install cask
else
	curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
endif
endif

.PHONY: clean
clean:
	rm -rf el-get/*
	rm -rf elpa/*

.PHONY: install
install:
	emacs -batch --eval '(setq debug-on-error t)' -l ./init.el

.PHONY: symlink
symlink:
	if [ ! -e $(HOME)/.emacs.d ]; then \
		ln -sf $(PWD) $(HOME)/.emacs.d; \
	fi
