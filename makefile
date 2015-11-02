.PHONY: resume render serve build deploy rsync

resume:
	cp ../resume/resume.pdf site

render:
	mkdir -p site

serve:
	serve site -p 3092 > /dev/null &

deploy:
	s3cmd sync site/ s3://lavelle.co --acl-public

rsync:
	rsync -Rr \
		vendor/bootstrap/dist/css/bootstrap.css \
		site
