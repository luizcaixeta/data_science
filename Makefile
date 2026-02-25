MAIN=main
OUTDIR=output

build:
	mkdir -p $(OUTDIR)
	latexmk -pdf -interaction=nonstopmode -synctex=1 -outdir=$(OUTDIR) $(MAIN).tex

watch:
	mkdir -p $(OUTDIR)
	latexmk -pdf -pvc -interaction=nonstopmode -synctex=1 -outdir=$(OUTDIR) $(MAIN).tex

clean:
	latexmk -C -outdir=$(OUTDIR)
	rm -rf $(OUTDIR)