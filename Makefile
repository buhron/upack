all: help
build:
	@echo '[i] Building upack'
	gcc upack/upack.c -lcurl -o data/bin/upack
help:
	@printf 'Usage: \n > make build - build upack \n > make (help) - display this help message \n > make install - install upack to /usr (or what PREFIX is set to in make process) \n > make version - show version/commit of upack \n > make clean/distclean - clean up build directory'
	@exit 0
version:
	@cat .version
clean:
	@echo '[i] Cleaning up upack'
	rm -f data/bin/upack
	rm -f data/bin/upack-repo
distclean: clean