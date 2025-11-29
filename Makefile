.DEFAULT_GOAL := help

LOCAL_BIN=$(CURDIR)/bin

include bin-deps.mk

.PHONY: generateprotocode
run: ## generate proto code project
	$ protoc -I proto proto/sso/rpc/auth.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go  --go-grpc_opt=paths=source_relative



