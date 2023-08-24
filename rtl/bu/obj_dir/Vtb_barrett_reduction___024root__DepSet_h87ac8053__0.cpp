// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_barrett_reduction.h for the primary calling header

#include "verilated.h"

#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction___024root.h"

VlCoroutine Vtb_barrett_reduction___024root___eval_initial__TOP__0(Vtb_barrett_reduction___024root* vlSelf);

void Vtb_barrett_reduction___024root___eval_initial(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_initial\n"); );
    // Body
    Vtb_barrett_reduction___024root___eval_initial__TOP__0(vlSelf);
}

VL_INLINE_OPT VlCoroutine Vtb_barrett_reduction___024root___eval_initial__TOP__0(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_initial__TOP__0\n"); );
    // Init
    IData/*31:0*/ tb_barrett_reduction__DOT__input_file;
    tb_barrett_reduction__DOT__input_file = 0;
    IData/*31:0*/ tb_barrett_reduction__DOT__output_file;
    tb_barrett_reduction__DOT__output_file = 0;
    IData/*31:0*/ tb_barrett_reduction__DOT__unnamedblk1__DOT__i;
    tb_barrett_reduction__DOT__unnamedblk1__DOT__i = 0;
    VlWide<3>/*95:0*/ __Vtemp_he3625329__0;
    VlWide<3>/*95:0*/ __Vtemp_h6ffb8cc6__0;
    // Body
    __Vtemp_he3625329__0[0U] = 0x2e747874U;
    __Vtemp_he3625329__0[1U] = 0x6e707574U;
    __Vtemp_he3625329__0[2U] = 0x69U;
    tb_barrett_reduction__DOT__input_file = VL_FOPEN_NN(
                                                        VL_CVT_PACK_STR_NW(3, __Vtemp_he3625329__0)
                                                        , 
                                                        std::string{"w"});
    ;
    __Vtemp_h6ffb8cc6__0[0U] = 0x2e747874U;
    __Vtemp_h6ffb8cc6__0[1U] = 0x74707574U;
    __Vtemp_h6ffb8cc6__0[2U] = 0x6f75U;
    tb_barrett_reduction__DOT__output_file = VL_FOPEN_NN(
                                                         VL_CVT_PACK_STR_NW(3, __Vtemp_h6ffb8cc6__0)
                                                         , 
                                                         std::string{"w"});
    ;
    tb_barrett_reduction__DOT__unnamedblk1__DOT__i = 0U;
    while (VL_GTS_III(32, 0x3e8U, tb_barrett_reduction__DOT__unnamedblk1__DOT__i)) {
        vlSelf->tb_barrett_reduction__DOT__c = VL_RANDOM_I();
        VL_FWRITEF(tb_barrett_reduction__DOT__input_file,"%x\n",
                   32,vlSelf->tb_barrett_reduction__DOT__c);
        co_await vlSelf->__VdlySched.delay(0xaULL, 
                                           nullptr, 
                                           "tb_barrett_reduction.sv", 
                                           32);
        vlSelf->tb_barrett_reduction__DOT__expected_result 
            = VL_MODDIV_III(32, vlSelf->tb_barrett_reduction__DOT__c, (IData)(0xd01U));
        VL_FWRITEF(tb_barrett_reduction__DOT__output_file,"%x %x\n",
                   16,vlSelf->tb_barrett_reduction__DOT__result,
                   32,vlSelf->tb_barrett_reduction__DOT__expected_result);
        tb_barrett_reduction__DOT__unnamedblk1__DOT__i 
            = ((IData)(1U) + tb_barrett_reduction__DOT__unnamedblk1__DOT__i);
    }
    VL_FCLOSE_I(tb_barrett_reduction__DOT__input_file); VL_FCLOSE_I(tb_barrett_reduction__DOT__output_file); VL_FINISH_MT("tb_barrett_reduction.sv", 46, "");
}

VL_INLINE_OPT void Vtb_barrett_reduction___024root___act_sequent__TOP__0(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___act_sequent__TOP__0\n"); );
    // Body
    vlSelf->tb_barrett_reduction__DOT__result = (0xffffU 
                                                 & (vlSelf->tb_barrett_reduction__DOT__c 
                                                    - 
                                                    ((IData)(0xd01U) 
                                                     * (IData)(
                                                               ((0x13afb7ULL 
                                                                 * (QData)((IData)(vlSelf->tb_barrett_reduction__DOT__c))) 
                                                                >> 0x20U)))));
}

void Vtb_barrett_reduction___024root___eval_act(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_act\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        Vtb_barrett_reduction___024root___act_sequent__TOP__0(vlSelf);
    }
}

void Vtb_barrett_reduction___024root___eval_nba(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_barrett_reduction___024root___act_sequent__TOP__0(vlSelf);
    }
}

void Vtb_barrett_reduction___024root___eval_triggers__act(Vtb_barrett_reduction___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__act(Vtb_barrett_reduction___024root* vlSelf);
#endif  // VL_DEBUG
void Vtb_barrett_reduction___024root___timing_resume(Vtb_barrett_reduction___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_barrett_reduction___024root___dump_triggers__nba(Vtb_barrett_reduction___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_barrett_reduction___024root___eval(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            Vtb_barrett_reduction___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vtb_barrett_reduction___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("tb_barrett_reduction.sv", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                Vtb_barrett_reduction___024root___timing_resume(vlSelf);
                Vtb_barrett_reduction___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vtb_barrett_reduction___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("tb_barrett_reduction.sv", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vtb_barrett_reduction___024root___eval_nba(vlSelf);
        }
    }
}

void Vtb_barrett_reduction___024root___timing_resume(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___timing_resume\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

#ifdef VL_DEBUG
void Vtb_barrett_reduction___024root___eval_debug_assertions(Vtb_barrett_reduction___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_barrett_reduction__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_barrett_reduction___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
