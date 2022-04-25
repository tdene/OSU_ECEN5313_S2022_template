pres.pdf : pres.tex figs
	pdflatex $<
	pdflatex $<

.PHONY: figs
figs: vin-data.txt
	gnuplot plot-vin-ripple.sh
	gnuplot plot-vin-efficeny.sh
	epspdf vin-eff.ps
	epspdf vin-ripple.ps
	pdfcrop vin-eff.pdf
	pdfcrop vin-ripple.pdf
	mv vin-eff-crop.pdf vin-eff.pdf
	mv vin-ripple-crop.pdf vin-ripple.pdf

clean:
	rm -rf pres.pdf *.out *.toc *.aux *.nav *.snm *.log
	rm *.ps vin-eff.pdf vin-ripple.pdf
