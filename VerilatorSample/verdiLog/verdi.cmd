simSetSimulator "-vcssv" -exec "simv" -args
debImport "-dbdir" "simv.daidir/"
debLoadSimResult \
           /media/share/GitHub/ntt-for-hps-integration/VerilatorSample/top.fsdb
wvCreateWindow
srcHBDrag -win $_nTrace1
srcHBSelect "TB.dut.dut" -win $_nTrace1
srcHBSelect "TB.dut.dut" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
debExit
