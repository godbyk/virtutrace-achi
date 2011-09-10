all: pdf

TEXFILE=virtutrace-achi

pdf: ${TEXFILE}.pdf

%.pdf: %.tex
	pdflatex $<
	pdflatex $<
	pdflatex $<

clean:
	@rm -f *.aux *.log *.out *.toc *.glo *.idx *.bbl *.blg
	@rm -f ${TEXFILE}.pdf
	@rm -f ${TEXFILE}.dvi

.PHONY: all pdf clean


