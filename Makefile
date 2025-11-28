debug:
	rsync -a theme_overrides/ themes/
	hugo server -D
