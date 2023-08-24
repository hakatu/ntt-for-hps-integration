// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_barrett_reduction.h for the primary calling header

#include "verilated.h"

#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction__Syms.h"
#include "Vtb_barrett_reduction___024root.h"

void Vtb_barrett_reduction___024root___ctor_var_reset(Vtb_barrett_reduction___024root* vlSelf);

Vtb_barrett_reduction___024root::Vtb_barrett_reduction___024root(Vtb_barrett_reduction__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtb_barrett_reduction___024root___ctor_var_reset(this);
}

void Vtb_barrett_reduction___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vtb_barrett_reduction___024root::~Vtb_barrett_reduction___024root() {
}
