// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vtb_barrett_reduction.h"
#include "Vtb_barrett_reduction__Syms.h"

//============================================================
// Constructors

Vtb_barrett_reduction::Vtb_barrett_reduction(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vtb_barrett_reduction__Syms(contextp(), _vcname__, this)}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vtb_barrett_reduction::Vtb_barrett_reduction(const char* _vcname__)
    : Vtb_barrett_reduction(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vtb_barrett_reduction::~Vtb_barrett_reduction() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vtb_barrett_reduction___024root___eval_debug_assertions(Vtb_barrett_reduction___024root* vlSelf);
#endif  // VL_DEBUG
void Vtb_barrett_reduction___024root___eval_static(Vtb_barrett_reduction___024root* vlSelf);
void Vtb_barrett_reduction___024root___eval_initial(Vtb_barrett_reduction___024root* vlSelf);
void Vtb_barrett_reduction___024root___eval_settle(Vtb_barrett_reduction___024root* vlSelf);
void Vtb_barrett_reduction___024root___eval(Vtb_barrett_reduction___024root* vlSelf);

void Vtb_barrett_reduction::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vtb_barrett_reduction::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vtb_barrett_reduction___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vtb_barrett_reduction___024root___eval_static(&(vlSymsp->TOP));
        Vtb_barrett_reduction___024root___eval_initial(&(vlSymsp->TOP));
        Vtb_barrett_reduction___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vtb_barrett_reduction___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vtb_barrett_reduction::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t Vtb_barrett_reduction::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

const char* Vtb_barrett_reduction::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vtb_barrett_reduction___024root___eval_final(Vtb_barrett_reduction___024root* vlSelf);

VL_ATTR_COLD void Vtb_barrett_reduction::final() {
    Vtb_barrett_reduction___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vtb_barrett_reduction::hierName() const { return vlSymsp->name(); }
const char* Vtb_barrett_reduction::modelName() const { return "Vtb_barrett_reduction"; }
unsigned Vtb_barrett_reduction::threads() const { return 1; }
