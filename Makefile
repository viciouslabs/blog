up:
	rsync -a theme_overrides/ themes/
	bash -c 'find theme_overrides -type f | entr -r rsync -a theme_overrides/ themes/ & \
		entr_pid=$$!; \
		trap "kill $$entr_pid" EXIT; \
		hugo server -D'

build:
	rsync -a theme_overrides/ themes/
	hugo build
