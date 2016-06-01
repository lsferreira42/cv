all:
	xelatex LeandroFerreira_PT.tex >/dev/null
	xelatex LeandroFerreira_EN.tex >/dev/null
	rm -f *.log *.aux *.out
	/bin/cp -f  LeandroFerreira_*.pdf /Users/leandroferreira/Dropbox/updated_cv

debug:
	xelatex LeandroFerreira_PT.tex; rm -f *.log *.aux *.out

deploy: 
	site-deploy LeandroFerreira_*.pdf /var/www/leandrosf.com/data/
