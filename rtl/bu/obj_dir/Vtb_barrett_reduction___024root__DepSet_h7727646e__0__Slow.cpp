// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_barrett_reduction.h for the primary calling header

#include "verilated.h"

#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction___024root.h"

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_initial__TOP(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_initial__TOP\n"); );
    // Init
    VlWide<6>/*191:0*/ __Vtemp_h1588f885__0;
    // Body
    __Vtemp_h1588f885__0[0U] = 0x2e766364U;
    __Vtemp_h1588f885__0[1U] = 0x74696f6eU;
    __Vtemp_h1588f885__0[2U] = 0x65647563U;
    __Vtemp_h1588f885__0[3U] = 0x74745f72U;
    __Vtemp_h1588f885__0[4U] = 0x61727265U;
    __Vtemp_h1588f885__0[5U] = 0x74625f62U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(6, __Vtemp_h1588f885__0));
    VL_PRINTF_MT("-Info: tb_barrett_reduction.sv:52: $dumpvar ignored, as Verilated without --trace\n");
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__stl(Vtb_barrett_reduction___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_triggers__stl(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (0U == vlSelf->__VstlIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_barrett_reduction___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
