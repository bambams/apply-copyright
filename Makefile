PROGRAM=bin/apply-copyright
PREFIX=/usr/local

.PHONY: all help install

all:
	@echo 'There is currently nothing to build. See `make help'\''.' 1>&2;

help:
	@echo 'Makefile targets:';
	@echo 'all      Does nothing. Points you here. (Default)';
	@echo 'help     Print this message.';
	@echo 'install  Install the program. Installs into PREFIX/bin. The';
	@echo '         default PREFIX is '\''${PREFIX}'\''.';

install:
	install "${PROGRAM}" "${PREFIX}/bin/"
