sync:
	rsync -avz public/ ${SSH}:${SITE_PATH}

post:
	echo "posts/$(shell date '+%Y/%y-%m-%d')"
	hugo new posts/$(shell date '+%Y/%y-%m-%d').md

wir_post:
	hugo new posts/$(shell date -v -7d '+%Y/%y-%m-%d')-week-in-review.md

site_build:
	hugo

commit: site_build
	git add .
	git commit -m "auto: $(shell date '+%Y/%y-%m-%d') update"
	git push origin

site_push: commit sync
