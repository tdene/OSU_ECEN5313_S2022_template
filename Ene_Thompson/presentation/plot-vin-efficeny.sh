set terminal postscript portrait enhanced color dashed lw 1 "DejaVuSans" 12
set size 1, 0.5
set output "vin-eff.ps"
set title "Efficiency vs Vin"
set ylabel "Efficiency (%)"
set xlabel "Vin (V)"
unset key
plot "vin-data.txt" using 1:8 with lines
 
