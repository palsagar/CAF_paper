# to compile and display pdf from latex files

view : pdf_3 momcons.pdf
	okular momcons.pdf & 

pdf_3 :  pdf_2 momcons.tex 
	pdflatex momcons.tex

pdf_2 : bib momcons.tex 
	pdflatex momcons.tex

bib : pdf_1 momcons.tex 
	bibtex momcons

pdf_1 : momcons.tex 
	pdflatex momcons.tex


#view : pdf subgrid.pdf
#	evince subgrid.pdf & 
#
#
#pdf : subgrid.tex
#	pdflatex subgrid.tex


