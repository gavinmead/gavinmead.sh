sync:
	rsync -avzOt public/ ${SSH}:${SITE_PATH}

