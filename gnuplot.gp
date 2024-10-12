set terminal pngcairo enhanced font "Arial,12" size 1200,600
set output 'v_plot.png'

set xlabel "Relative position" font "Arial-Bold,24" offset 0,-1
set ylabel "Fragment length" font "Arial-Bold,24" offset -4,0

set xtics 200 font "Arial-Bold,20" 
set ytics 50 font "Arial-Bold,20" 

set tics scale 0

set style line 1 lc rgb 'black' lw 4
set border linestyle 1 lw 4

set xrange [0:1000]
set yrange [40:250]

set palette defined (0 "white", 200 "blue")

set cbrange [0:200]
set cbtics 50 font "Arial-Bold,20" 

set grid

set view map
set style data pm3d
splot 'clean_matrix.dat' matrix with pm3d
