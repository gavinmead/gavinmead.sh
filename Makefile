sync:
	rsync -avz public/ ${SSH}:${SITE_PATH}

post:
	echo "posts/$(shell date '+%Y/%y-%m-%d')"
	hugo new posts/$(shell date '+%Y/%y-%m-%d').md

site_build:
	hugo

commit: site_build
	git add .
	git commit -m "auto: $(shell date '+%Y/%y-%m-%d') update"
	git push origin

#site_push:
