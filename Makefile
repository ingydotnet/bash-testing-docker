SHELL := bash

DOCKER_USER := ingy
DOCKER_NAME := bash-testing
DOCKER_VERSION := 0.0.1
DOCKER_IMAGE := $(DOCKER_USER)/$(DOCKER_NAME):$(DOCKER_VERSION)

build:
	docker build --tag=$(DOCKER_IMAGE) .

publish: build
	docker push $(DOCKER_IMAGE)

