.PHONY: build-alma build-rhel

build-alma:
	ansible-builder build -f execution-environment.alma.yml -t ee-alma

build-rhel:
	ansible-builder build -f execution-environment.rhel.yml -t ee-rhel
