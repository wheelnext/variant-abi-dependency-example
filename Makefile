.PHONY: build build-a build-b
.SILENT:

build: build-base build-dependent
	cp abi_dependent/dist/*.whl docs/abi_dependent/
	cp base_project/dist/*.whl docs/base_project/

build-base:
	$(MAKE) -C base_project build

build-dependent:
	$(MAKE) -C abi_dependent build