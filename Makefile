all: ready

ready:
	@bundle check 2>&1 >/dev/null || { bundle --local --path vendor/bundle > /dev/null && bundle check; }
