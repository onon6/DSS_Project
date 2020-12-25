tarball:
	@tar -czf exploits.tar.gz Makefile exploit040.py exploit060.py exploit080.py exploit100.py exploit120.py
test: tarball
	@casper_verify_tarball exploits.tar.gz

all: exploit040 exploit060 exploit080 exploit100 exploit120
	@echo "All done"

exploit040:
	python2 ./exploit040.py || true
exploit060:
	python2 ./exploit060.py || true
exploit080:
	python2 ./exploit080.py || true
exploit100:
	python2 ./exploit100.py || true
exploit120:
	python2 ./exploit120.py || true
