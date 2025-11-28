debug:
	rsync -a theme_overrides/ themes/
	hugo server -D

build:
	rsync -a theme_overrides/ themes/
	hugo build
