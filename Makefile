all:
	xelatex -interaction=batchmode LeandroFerreira_PT.tex >/dev/null | true
	xelatex -interaction=batchmode LeandroFerreira_EN.tex >/dev/null | true
	rm -f *.log *.aux *.out

deploy: 
	site-deploy LeandroFerreira_*.pdf /var/www/leandrosf.com/data/

clean:
	rm -f *.pdf *.log *.aux *.out

