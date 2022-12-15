.PHONY: build
WORKDIR=$(shell pwd)
pkgname=cas-proxy

build: 
	@rm -rf bin
	mkdir bin
	go build  -o ./bin/$(pkgname) ./cmd/$(pkgname)
build-pack:
	@rm -rf bin
	mkdir bin
	CGO_ENABLED=0  GOOS=linux  GOARCH=amd64	go build  -o ./bin/$(pkgname) ./cmd/$(pkgname)
debug-build:
	@rm -rf bin
	mkdir bin
	go build  -gcflags "all=-N -l"  -o ./bin/$(pkgname) ./cmd/$(pkgname)/
debug:debug-build
	dlv --listen=:2345 --headless=true --api-version=2 --accept-multiclient exec bin/$(pkgname) -- -c configs/cas.toml
reload:
	ps aux|grep $(pkgname) |grep -v grep |grep -v tail|awk '{print $$2}' |xargs kill -SIGHUP
start: build
	./bin/$(pkgname) -c ./configs/cas.toml
stop:
	ps aux|grep $(pkgname) |grep -v grep |grep -v tail|awk '{print $$2}' |xargs kill -9
pack: build-pack
	@rm -rf build
	mkdir build
	tar zvcf build/$(pkgname).tar.gz bin/$(pkgname) configs Makefile web/*
deploy:
	${WORKDIR}/bin/$(pkgname) -c ${WORKDIR}/configs/cas.toml -d=true >> ${WORKDIR}/var/log/std.log 2>&1
restart:
	ps aux|grep $(pkgname) |grep -v grep |grep -v tail|awk '{print $$2}' |xargs kill -SIGUSR2
clean: ## 清除bin、build目录
	@rm -rf bin build 
.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

