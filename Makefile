.PHONY: install serve build check-zola

ZOLA_MIN := 0.23

install:
	@command -v zola >/dev/null 2>&1 && echo "Zola already installed." || brew install zola
	@$(MAKE) --no-print-directory check-zola

check-zola:
	@command -v zola >/dev/null 2>&1 || { echo "Zola not installed: run make install"; exit 1; }
	@zola --version | awk -v min=$(ZOLA_MIN) '{ split($$2, v, "."); split(min, m, "."); \
		if (v[1] < m[1] || (v[1] == m[1] && v[2] < m[2])) { \
			print "Zola " $$2 " found, " min " or newer required: run brew upgrade zola"; exit 1 } }'

serve: check-zola
	zola serve

build: check-zola
	zola build
