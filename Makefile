.PHONY: build
.SILENT:

build: build-torch build-flash-attn build-vllm

	rm -rf docs/v0.0.3/torch/*
	cp torch/dist/*.whl docs/v0.0.3/torch/
	variantlib generate-index-json -d docs/v0.0.3/torch/
	mockhouse generate-project-index -d docs/v0.0.3/torch/

	rm -rf docs/v0.0.3/flash_attn/*
	cp flash_attention/dist/*.whl docs/v0.0.3/flash_attn/
	variantlib generate-index-json -d docs/v0.0.3/flash_attn/
	mockhouse generate-project-index -d docs/v0.0.3/flash_attn/

	rm -rf docs/v0.0.3/vllm/*
	cp vllm/dist/*.whl docs/v0.0.3/vllm/
	variantlib generate-index-json -d docs/v0.0.3/vllm/
	mockhouse generate-project-index -d docs/v0.0.3/vllm/

build-torch:
	$(MAKE) -C torch build

build-flash-attn:
	$(MAKE) -C flash_attention build

build-vllm:
	$(MAKE) -C vllm build
