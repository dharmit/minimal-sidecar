all: build create-image push-image

build:
	go build -o sidecar ./main.go

create-image:
	podman build -t quay.io/dharmit_rh/hardcoded-sidecar .

push-image:
	podman push quay.io/dharmit_rh/hardcoded-sidecar