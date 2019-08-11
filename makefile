PDFLATEX_FLAFS="\\nonstopmode "

all: cv resume

cv:
	-xelatex -jobname cv $(PDFLATEX_FLAFS) "\def\cv{1} \input main.tex"
resume:
	-xelatex -jobname resume $(PDFLATEX_FLAFS) "\def\resume{1} \input main.tex"

clean-all:
	rm *.aux *.out *.log *.pdf
clean:
	rm *.aux *.out *.log
