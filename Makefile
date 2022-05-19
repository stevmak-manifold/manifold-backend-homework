.PHONY: init help test reqs

objects = $(wildcard *.in)
outputs := $(objects:.in=.txt)

help:
	@echo "Hello World!"
	@echo "'make init' to set up environment dependencies and generate data"
	@echo ""
	@echo "EVERYTHING BELOW IS NOT IMPLEMENTED:"
# @echo "'make config' to change defaults"
# @echo "'make run' to run local webserver version"
# @echo "'make build' to, um, build"
	@echo "'make test' to run tests"

apt:
	sudo apt install awscli python3-pytest
	echo "Remove me to rerun apt" > apt

init:
	docker-compose build
	docker-compose up -d

process:
# . put your code here

test:
# . put your code here 

