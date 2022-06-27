.PHONY: default build run

default: build run

build:
	docker build -t pumoda:latest .

run:
	docker run -it -p 9292:9292 pumoda:latest