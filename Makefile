all: build

install: pull
	cp linuxhere.fish ~/.config/fish/functions/linuxhere.fish

pull:
	docker pull aybabtme/linuxhere:latest

build:
	docker image build --tag aybabtme/linuxhere --file Dockerfile .

push: build
	docker push aybabtme/linuxhere:latest
