main.pdf: main.tex
	latexmk -xelatex -shell-escape $(basename $@)

clean:
	find . -name "*.out"  | xargs rm -f
	find . -name "*.log"  | xargs rm -f
	find . -name "*.aux"  | xargs rm -f
	find . -name "*.nav"  | xargs rm -f
	find . -name "*.snm"  | xargs rm -f
	find . -name "*.toc"  | xargs rm -f
	find . -name "*.vrb"  | xargs rm -f
	find . -name "*.pyg"  | xargs rm -f
	find . -name "*.nav"  | xargs rm -f
	find . -name "*.toc"  | xargs rm -f
	find . -name "*.atfi"  | xargs rm -f
	find . -name "*.bbl"  | xargs rm -f
	find . -name "*.bcf"  | xargs rm -f
	find . -name "*.blg"  | xargs rm -f
	find . -name "*.fdb_latexmk"  | xargs rm -f
	find . -name "*.fls"  | xargs rm -f
	find . -name "*.listing"  | xargs rm -f
	find . -name "*.xml"  | xargs rm -f
	find . -name "*.xdv"  | xargs rm -f
	find . -name "*.*~"  | xargs rm -f
#	find . -name "*~"  | xargs rm -f
#cleanall:
#	-rm -r $(TmpFile) $(Target)

#.PHONY: all read clean cleanall
