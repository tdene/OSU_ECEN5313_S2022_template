set terminal postscript portrait enhanced color dashed lw 1 "DejaVuSans" 12
set size 1, 0.5
set output "io-ripple.ps"
set title "Ripple vs Iout"
set ylabel "Ripple (mV)"
set xlabel "Iout (A)"
unset key
plot "io-data.txt" using 9:5 with lines
 
