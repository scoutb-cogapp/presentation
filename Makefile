.PHONY: install serve build

install:
	@command -v zola >/dev/null 2>&1 && echo "Zola already installed." || brew install zola

serve:
	zola serve

build:
	zola build
