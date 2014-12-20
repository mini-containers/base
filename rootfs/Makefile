release ?= edge

build:
	docker build -t base-rootfs .
	docker run --name build-rootfs -it base-rootfs -r $(release)
	docker cp build-rootfs:/tmp/rootfs.tar.xz .
	docker rm build-rootfs
	mv rootfs.tar.xz ../

.PHONY: build
