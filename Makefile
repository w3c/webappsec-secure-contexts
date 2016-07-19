all: index.html

force:
	bikeshed -f spec ./index.src.html

index.html: index.src.html
	bikeshed -f spec ./index.src.html

CR:
	bikeshed -f spec --md-status=CR --md-deadline=2016-09-20 ./index.src.html ./CR.html

WD:
	bikeshed -f spec --md-status=WD ./index.src.html ./WD.html

publish:
	git push origin master master:gh-pages

