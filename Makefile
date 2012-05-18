all:
	pdflatex git.tex
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb
purge: clean
	rm -f *.pdf
