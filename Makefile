SHELL := bash

DOCKER_USER := ingy
DOCKER_NAME := bash-testing
DOCKER_TAG := 0.0.4
DOCKER_IMAGE := $(DOCKER_USER)/$(DOCKER_NAME):$(DOCKER_TAG)

build:
	docker build --tag=$(DOCKER_IMAGE) .

shell: build
	docker run -it --rm $(DOCKER_IMAGE) bash

publish: build
	docker push $(DOCKER_IMAGE)

