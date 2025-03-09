CC = gcc

PREFIX = /usr
SYSCONFDIR = ${PREFIX}/etc

all: help
prepbuild:
	@mkdir -p data/bin
	@mkdir data/include
	@mkdir data/lib
	@mkdir data/lib64
build:
	@echo '[i] Building upack'
	gcc upack/upack.c -lcurl -o data/bin/upack
help:
	@printf 'Usage: \n > make build - build upack \n > make (help) - display this help message \n > make install - install upack to /usr (or what PREFIX is set to in make process) \n > make version - show version/commit of upack \n > make clean/distclean - clean up build directory'
	@exit 0
version:
	@sh -c "if [! -f .version]