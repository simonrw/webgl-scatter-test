all: static/bundle.js static/example.js

watch:
	when-changed scatter.js scatter_example.js -c make

static/bundle.js: scatter.js
	./node_modules/.bin/browserify $< -o $@

static/example.js: scatter_example.js
	./node_modules/.bin/browserify $< -o $@

.PHONY: watch
