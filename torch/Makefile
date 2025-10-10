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
	cp pyproject_2.8.0.toml pyproject.toml

	flit build --format wheel \
	    --variant-label "cuda12.6" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0" \
		-p "nvidia :: sm_arch :: 50_real" \
		-p "nvidia :: sm_arch :: 60_real" \
		-p "nvidia :: sm_arch :: 70_real" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "priority :: cuda :: 3"
	
	flit build --format wheel \
	    --variant-label "cuda12.8" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0" \
		-p "nvidia :: sm_arch :: 70_real" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "nvidia :: sm_arch :: 100_real" \
		-p "nvidia :: sm_arch :: 120_real" \
		-p "priority :: cuda :: 2"
	
	flit build --format wheel \
	    --variant-label "cuda12.9" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0" \
		-p "nvidia :: sm_arch :: 70_real" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "nvidia :: sm_arch :: 100_real" \
		-p "nvidia :: sm_arch :: 120_real" \
		-p "nvidia :: sm_arch :: 120_virtual" \
		-p "priority :: cuda :: 1"

	cp pyproject_2.9.0.toml pyproject.toml

	flit build --format wheel \
	    --variant-label "cuda12.6" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0" \
		-p "nvidia :: sm_arch :: 50_real" \
		-p "nvidia :: sm_arch :: 60_real" \
		-p "nvidia :: sm_arch :: 70_real" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "priority :: cuda :: 3"
	
	flit build --format wheel \
	    --variant-label "cuda12.8" \
		-p "nvidia :: cuda_version_lower_bound :: 12.0" \
		-p "nvidia :: sm_arch :: 70_real" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "nvidia :: sm_arch :: 100_real" \
		-p "nvidia :: sm_arch :: 120_real" \
		-p "priority :: cuda :: 2"
	
	flit build --format wheel \
	    --variant-label "cuda13.0" \
		-p "nvidia :: cuda_version_lower_bound :: 13.0" \
		-p "nvidia :: sm_arch :: 75_real" \
		-p "nvidia :: sm_arch :: 80_real" \
		-p "nvidia :: sm_arch :: 86_real" \
		-p "nvidia :: sm_arch :: 90_real" \
		-p "nvidia :: sm_arch :: 100_real" \
		-p "nvidia :: sm_arch :: 120_real" \
		-p "nvidia :: sm_arch :: 120_virtual" \
		-p "priority :: cuda :: 1"

	rm -f pyproject.toml
	
	ls -al dist/
