.DEFAULT_GOAL := help

LOCAL_BIN=$(CURDIR)/bin

include bin-deps.mk

.PHONY: generateprotocode
run: ## generate proto code project
	$ protoc -I ./proto   --go_out=.   --go_opt=paths=source_relative   --go-grpc_out=.   --go-grpc_opt=paths=source_relative   proto/sso/package.proto



