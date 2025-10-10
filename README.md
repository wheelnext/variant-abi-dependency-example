# variant-abi-dependency-example

### Scenarios

```
uv pip install torch==2.8.0 flash-attn
uv pip install torch==2.9.0 flash-attn
uv pip install torch flash-attn

uv pip install torch==2.8.0 && uv pip install flash-attn
uv pip install torch==2.9.0 && uv pip install flash-attn
uv pip install torch && uv pip install flash-attn

uv sync
```
