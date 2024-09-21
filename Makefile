.PHONY:protoc
protoc:
	@echo 'Generating proto files'
	protoc -I=proto/sso  --go_out=gen/go --go_opt=paths=source_relative --go-grpc_out=gen/go
    --go-grpc_opt=paths=source_relative  proto/sso/sso.proto