all: run

.PHONY: image
image: Dockerfile
	docker build -t karlvr/bolo-tracker .

.PHONY: run
run: Dockerfile image
	docker run -it -p 50000:50000 karlvr/bolo-tracker

push: image
	docker push karlvr/bolo-tracker
