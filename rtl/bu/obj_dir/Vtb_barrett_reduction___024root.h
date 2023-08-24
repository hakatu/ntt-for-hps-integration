// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_barrett_reduction.h for the primary calling header

#ifndef VERILATED_VTB_BARRETT_REDUCTION___024ROOT_H_
#define VERILATED_VTB_BARRETT_REDUCTION___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_barrett_reduction__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_barrett_reduction___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ tb_barrett_reduction__DOT__uut__DOT__result_temp;
    IData/*31:0*/ tb_barrett_reduction__DOT__c;
    IData/*31:0*/ tb_barrett_reduction__DOT__expected_result;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VactIterCount;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb_barrett_reduction__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_barrett_reduction___024root(Vtb_barrett_reduction__Syms* symsp, const char* v__name);
    ~Vtb_barrett_reduction___024root();
    VL_UNCOPYABLE(Vtb_barrett_reduction___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
