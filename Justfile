# Local Variables:
# mode: makefile
# End:
# vim: set ft=make :
# just: https://github.com/casey/just

develop:
	minify -w -o static/css/style.min.css static/css/style.css static/css/normalize.css&
	hugo serve -D --theme=hugo-wiki --disableFastRender -s ../../.
	pkill minify

minify:
	minify -o static/css/style.min.css static/css/style.css static/css/normalize.css
