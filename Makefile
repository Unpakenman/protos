.DEFAULT_GOAL := help
LOCAL_BIN=$(CURDIR)/bin

include bin-deps.mk

.PHONY: generateprotocode
run: ## generate proto code project
	$ protoc \
        -I proto \
        --go_out=gen/go --go_opt=paths=source_relative \
        --go-grpc_out=gen/go --go-grpc_opt=paths=source_relative \
        --go-grpc_opt=require_unimplemented_servers=false \
        proto/sso/package.proto \
        proto/sso/rpc/add_clinic.proto \
        proto/sso/rpc/add_appointment.proto \
        proto/sso/rpc/add_employee.proto \
        proto/sso/rpc/appointments_slots.proto




