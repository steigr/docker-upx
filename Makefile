VERSION ?= 3.95
REPO    ?= lalyos/upx

build:
	docker build --tag=$(REPO):v$(VERSION) --build-arg=UPX_VER=$(VERSION) .