.PHONY: clean test coverage build install lint
.SILENT:

# ============================================================================ #
# CLEAN COMMANDS
# ============================================================================ #

clean: clean-build clean-pyc clean-test ## remove all build, test, coverage and Python artifacts

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test: ## remove test and coverage artifacts
	rm -fr .tox/
	rm -f .coverage*
	rm -fr htmlcov/
	rm -fr .pytest_cache

# ============================================================================ #
# BUILD COMMANDS
# ============================================================================ #

build: clean ## builds source and wheel package
	flit build --format wheel \
	    --variant-label "cu128_pyt2.8.0" \
		-p "abi_dependency :: torch :: 2.8.0" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0"

	ls -al dist/
