all:
	xelatex LeandroFerreira_PT.tex >/dev/null
	xelatex LeandroFerreira_EN.tex >/dev/null
	rm -f *.log *.aux *.out

deploy: 
	site-deploy LeandroFerreira_*.pdf /var/www/leandrosf.com/data/

clean:
	rm -f *.pdf *.log *.aux *.out

