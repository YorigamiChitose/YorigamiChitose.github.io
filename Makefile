# for github workflow build
build:
	hugo --baseURL=https://YorigamiChitose.github.io/

# for WSL2 local build & server
IP=$(shell ifconfig eth0 | grep "inet\b" | awk '{print $$2}')
local:
	hugo server --bind $(IP) --baseURL=http://$(IP)

clean:
	rm -rf ./public