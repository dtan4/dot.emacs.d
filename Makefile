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

# for 24-bit color support on a TTY
# https://www.gnu.org/software/emacs/manual/html_mono/efaq.html#Colors-on-a-TTY
.PHONY: setup-screen-24bit
setup-screen-24bit:
	tic -x -o ~/.terminfo screen-24bit.terminfo
