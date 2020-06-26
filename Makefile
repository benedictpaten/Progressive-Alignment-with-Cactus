outexts = aux bbl blg fdb_latexmk fls log out pdf

all:
	latexmk -pdf -latexoption=-file-line-error -latexoption=-halt-on-error < /dev/null

clean:
	rm -f ${outexts:%=main.%} ${outexts:%=supplement.%}
