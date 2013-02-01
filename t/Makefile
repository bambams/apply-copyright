.PHONY: all clean test test-clean

all: test-clean

clean:
	git checkout src/foo.c src/bar.c src/baz.c src/bak.sh

test: clean
	../bin/apply-copyright
	diff src/foo.c results/foo.c 1>/dev/null || echo 'foo.c failed' 1>&2;
	diff src/bar.c results/bar.c 1>/dev/null || echo 'bar.c failed' 1>&2;
	diff src/baz.c results/baz.c 1>/dev/null || echo 'baz.c failed' 1>&2;
	diff src/bak.sh results/bak.sh 1>/dev/null || echo 'bak.sh failed' 1>&2;

test-clean: test
	git checkout src/foo.c src/bar.c src/baz.c src/bak.sh
