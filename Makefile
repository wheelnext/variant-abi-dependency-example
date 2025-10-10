.PHONY: build build-torch build-flash-attn
.SILENT:

build: build-torch build-flash-attn
	cp torch/dist/*.whl docs/torch/
	variantlib generate-index-json -d docs/torch/
	mockhouse generate-project-index -d docs/torch/

	cp flash_attention/dist/*.whl docs/flash_attn/
	variantlib generate-index-json -d docs/flash_attn/
	mockhouse generate-project-index -d docs/flash_attn/

build-torch:
	$(MAKE) -C torch build

build-flash-attn:
	$(MAKE) -C flash_attention build
