# Makefile

lint:
	# install the yamllint, python lint, and html lint tools prior to running this
	@echo "  > Running yaml lint..."
	yamllint .

	@echo "  > Running markdown lint ..."
	markdownlint-cli2 "**/*.md"

	@echo "  > Running python lint ..."
	pylint --recursive=true --disable=duplicate-code .
	