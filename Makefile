.PHONY: clean

presentation.pdf: beamerthemeHPE.sty presentation.tex $(wildcard resources/*)
	latexmk -pdflatex="pplatex -c pdflatex --" -pdf -interaction=nonstopmode presentation.tex 2>&1 | tee latexmk_log.txt

clean:
	latexmk -C
	rm -f presentation.bbl presentation.run.xml \
		presentation.nav presentation.snm presentation.vrb latexmk_log.txt \
		result
