.DEFAULT_GOAL := install

.PHONY: clean
clean:
	rm -rf elpa

.PHONY: install
install:
	emacs -batch --eval '(setq debug-on-error t)' -l ./init.el

.PHONY: integration-test
integration-test:
	emacs -batch --eval '(setq debug-on-error t)' -l ./init.el

.PHONY: symlink
symlink:
	if [ ! -e $(HOME)/.emacs.d ]; then \
		ln -sf $(PWD) $(HOME)/.emacs.d; \
	fi
