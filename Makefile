BINS=./node_modules/.bin

install:
	npm install .


reset:
	rm -ir public/media/* public/css/* public/font/* public/js/* public/*.html


coffee:
	$(BINS)/coffee -o public/js/ -cm src/js/*.coffee


stylus:
	$(BINS)/stylus -o public/css/ -m src/css/index.styl


jade:
	@# jade files starting with an underscore "_" are considered private.
	@# They won't be compiled. Use this for includes and extends.
	$(BINS)/jade -P -m src/[^_]*.jade -o public/


build: jade coffee stylus
	@echo ">>> BUILD COMPLETE --------------------"


serve:
	($(BINS)/http-server public -c-1 -o)&


watch: serve
	$(BINS)/watch "make -j4 build" src
