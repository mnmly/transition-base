
build: components index.js transition-base.css
	@component build --dev

%.css: %.styl
	@stylus --use nib $<

template.js: template.html
	@component convert $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
