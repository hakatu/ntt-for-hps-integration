simSetSimulator "-vcssv" -exec "simv" -args
debImport "-dbdir" "simv.daidir/"
debLoadSimResult \
           /media/share/GitHub/ntt-for-hps-integration/rtl/bu/barret_reduction/tb_barrett_reduction.fsdb
wvCreateWindow
srcHBSelect "tb_barrett_reduction" -win $_nTrace1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_barrett_reduction"
wvGetSignalSetScope -win $_nWave2 "/tb_barrett_reduction/dut"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_barrett_reduction/dut/c\[31:0\]} \
{/tb_barrett_reduction/dut/c_mu\[63:0\]} \
{/tb_barrett_reduction/dut/c_mu_l\[31:0\]} \
{/tb_barrett_reduction/dut/floor_c_mu_q\[31:0\]} \
{/tb_barrett_reduction/dut/result\[15:0\]} \
{/tb_barrett_reduction/dut/result_temp\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_barrett_reduction/dut/c\[31:0\]} \
{/tb_barrett_reduction/dut/c_mu\[63:0\]} \
{/tb_barrett_reduction/dut/c_mu_l\[31:0\]} \
{/tb_barrett_reduction/dut/floor_c_mu_q\[31:0\]} \
{/tb_barrett_reduction/dut/result\[15:0\]} \
{/tb_barrett_reduction/dut/result_temp\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 148.152327 -snap {("G1" 3)}
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_barrett_reduction"
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
wvZoom -win $_nWave2 129.633286 277.785614
schSetOptions -win $_nSchema3 -annotate on
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 50.891473 183.209302
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 57.278958 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 56.252398 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 78.380469 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 76.555474 -snap {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
schSetScope -win $_nSchema3 -signal "tb_barrett_reduction.dut.c_mu_l\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
schSelect -win $_nSchema3 -signal "c\[31:0\]"
schDeselectAll -win $_nSchema3
schSetOptions -win $_nSchema3 -highContrastMode on
schSelect -win $_nSchema3 -signal "c\[31:0\]"
schChangeDisplayAttr -color ID_RED5
schDeselectAll -win $_nSchema3
srcTBTBHTogg
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiWindowWorkMode -win $_Verdi_1 -powerDebug
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 1033.745959 -snap {("G1" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "output_file" -line 17 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "result" -line 6 -pos 1 -win $_nTrace1
srcSelect -signal "expected_result" -line 8 -pos 1 -win $_nTrace1
schCreateWindow -win $_nSchema1 -hierFlatten
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
schSetOptions -win $_nSchema4 -annotate off
schSetOptions -win $_nSchema4 -annotate on
wvSetCursor -win $_nWave2 1079.827099 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 1090.320824 -snap {("G1" 5)}
schSelect -win $_nSchema4 -instpin "tb_barrett_reduction.dut" "result\[15:0\]"
schTraceLoad -win $_nSchema4
schSelect -win $_nSchema4 -signal "tb_barrett_reduction.expected_result\[31:0\]"
schFocusConnection -win $_nSchema4
schSelect -win $_nSchema4 -instpin \
          "tb_barrett_reduction.tb_barrett_reduction:Init0:19:48:Init" "O3"
schTraceLoad -win $_nSchema4
verdiWindowBeWindow -win $_nSchema_4
schSelect -win $_nSchema4 -instpin \
          "tb_barrett_reduction.tb_barrett_reduction:Init0:19:48:Init" "O2"
schTraceLoad -win $_nSchema4
schSelect -win $_nSchema4 -instpin \
          "tb_barrett_reduction.tb_barrett_reduction:Init0:19:48:Init" "O1"
schTraceLoad -win $_nSchema4
schUndo -win $_nSchema4
schUndo -win $_nSchema4
schSelect -win $_nSchema4 -instpin \
          "tb_barrett_reduction.tb_barrett_reduction:Init0:19:48:Init" "O2"
schTraceLoad -win $_nSchema4
schSelect -win $_nSchema4 -inst \
          "tb_barrett_reduction.dut.barrett_reduction\(@1\):SigOp4:33:33:Combo"
schSelect -win $_nSchema4 -inst \
          "tb_barrett_reduction.dut.barrett_reduction\(@1\):SigOp0:16:16:Combo"
schRemoveViewObj -win $_nSchema4
schSelect -win $_nSchema4 -inst "tb_barrett_reduction"
schSelect -win $_nSchema4 -inst \
          "tb_barrett_reduction.dut.barrett_reduction\(@1\):SigOp4:33:33:Combo"
schSelect -win $_nSchema4 -inst "tb_barrett_reduction.dut"
schCloseWindow -win $_nSchema4
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_barrett_reduction"
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.dut" -delim "."
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.unnamed\$\$_0" -delim "."
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.unnamed\$\$_0" -delim "."
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.dut" -delim "."
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
srcHBSelect "tb_barrett_reduction" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction" -delim "."
srcHBSelect "tb_barrett_reduction" -win $_nTrace1
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.unnamed\$\$_0" -delim "."
srcHBSelect "tb_barrett_reduction.unnamed\$\$_0" -win $_nTrace1
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_barrett_reduction.dut" -delim "."
srcHBSelect "tb_barrett_reduction.dut" -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiWindowBeWindow -win $_nSchema_3
debExit
