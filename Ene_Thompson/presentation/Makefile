pres.pdf : pres.tex figs
	pdflatex $<
	pdflatex $<

.PHONY: figs
figs: vin-data.txt
	gnuplot plot-vin-ripple.sh
	gnuplot plot-vin-efficeny.sh
	gnuplot plot-io-ripple.sh
	gnuplot plot-io-efficiency.sh
	epspdf vin-eff.ps
	epspdf vin-ripple.ps
	epspdf io-eff.ps
	epspdf io-ripple.ps
	pdfcrop vin-eff.pdf
	pdfcrop vin-ripple.pdf
	pdfcrop io-eff.pdf
	pdfcrop io-ripple.pdf
	mv vin-eff-crop.pdf vin-eff.pdf
	mv vin-ripple-crop.pdf vin-ripple.pdf
	mv io-eff-crop.pdf io-eff.pdf
	mv io-ripple-crop.pdf io-ripple.pdf

clean:
	rm -rf pres.pdf *.out *.toc *.aux *.nav *.snm *.log
	rm *.ps vin-eff.pdf vin-ripple.pdf
