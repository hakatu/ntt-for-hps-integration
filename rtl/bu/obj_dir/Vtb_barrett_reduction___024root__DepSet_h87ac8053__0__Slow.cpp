// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_barrett_reduction.h for the primary calling header

#include "verilated.h"

#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction___024root.h"

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_static(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_final(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_triggers__stl(Vtb_barrett_reduction___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__stl(Vtb_barrett_reduction___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_stl(Vtb_barrett_reduction___024root* vlSelf);

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_settle(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        Vtb_barrett_reduction___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                Vtb_barrett_reduction___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("tb_barrett_reduction.sv", 4, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            Vtb_barrett_reduction___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__stl(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vtb_barrett_reduction___024root___act_sequent__TOP__0(Vtb_barrett_reduction___024root* vlSelf);

VL_ATTR_COLD void Vtb_barrett_reduction___024root___eval_stl(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtb_barrett_reduction___024root___act_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__act(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__nba(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_barrett_reduction___024root___ctor_var_reset(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb_barrett_reduction__DOT__c = VL_RAND_RESET_I(32);
    vlSelf->tb_barrett_reduction__DOT__expected_result = VL_RAND_RESET_I(32);
    vlSelf->tb_barrett_reduction__DOT__uut__DOT__result_temp = VL_RAND_RESET_I(16);
    }
