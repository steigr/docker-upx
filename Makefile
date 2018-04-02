VERSION ?= 3.95
REPO    ?= lalyos/upx

build: pull
	docker build --tag=$(REPO):v$(VERSION) --build-arg=UPX_VER=$(VERSION) .

pull:
	@bash -c 'FROM() { docker pull "$$1"; }; $$( grep FROM Dockerfile)'