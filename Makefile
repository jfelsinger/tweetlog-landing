# ALL
.PHONY: all
all: sassout styles scripts watch


# mkdir for styles
# lack of it would stop compilation
.PHONY: sassout
sassout: build/css/
	mkdir -p build/css


# SASS
build/css/%.css: sass/%.scss
	sass -C sass/main.scss build/css/main.css

.PHONY: styles
styles: build/css/*.css


# COFFEE
COFFEEOUT = build/js/
build/js/%.js: coffee/%.coffee
	coffee -c -o $(COFFEEOUT) $< 

.PHONY: scripts
scripts: build/js/*.js


# WATCH
watch:
	echo "watching files"
	watchr -e "watch('sass/.*\.scss|coffee/.*.coffee') { system 'make' }" 
