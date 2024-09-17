all: resume

resume:
	-xelatex -jobname cv main.tex

dated: resume
	cp cv.pdf cv-$(shell date +"%m-%d-%Y").pdf

clean:
	rm cv.pdf
