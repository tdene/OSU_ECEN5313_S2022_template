set terminal postscript portrait enhanced color dashed lw 1 "DejaVuSans" 12
set size 1, 0.5
set output "vin-ripple.ps"
set title "Ripple vs Vin"
set ylabel "Riple (mV)"
set xlabel "Vin (V)"
unset key
plot "vin-data.txt" using 1:5 with lines
 
