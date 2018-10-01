.PHONY: dbuild-cryptos-accore-x8664
dbuild-cryptos-accore-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c -d -F"

.PHONY: dbuild-cryptos-accore-armhf
dbuild-cryptos-accore-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c -d -F"

.PHONY: dbuild-cryptos-accore-aarch64
dbuild-cryptos-accore-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c -d -F"
