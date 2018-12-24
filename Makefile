all: build

build:
	@docker build --tag=nogsantos/ansible-remote-machine .

release: build
	@docker build --tag=nogsantos/ansible-remote-machine:$(shell cat VERSION) .
