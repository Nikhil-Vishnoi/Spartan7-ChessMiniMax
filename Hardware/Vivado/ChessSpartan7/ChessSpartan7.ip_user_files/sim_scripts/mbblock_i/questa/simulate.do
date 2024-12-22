onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib mbblock_i_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mbblock_i.udo}

run 1000ns

quit -force
