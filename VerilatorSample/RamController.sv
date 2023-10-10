module RamController #(
    parameter NUM_OF_ROM = 32,        // Number of ROMs
    parameter ADDR_H_MIN = 7,
    parameter ADDR_H_MAX = 7 + $clog2(128) - $clog2(NUM_OF_ROM),        // Maximum address bit
    parameter RAMY_EN_LENGTH = 2**($clog2(128) - $clog2(NUM_OF_ROM))
) (
    input clk,
    input reset_n,
    output [ADDR_H_MAX : 0] addr_a, addr_b,
    output reg ram_done,
    output reg [RAMY_EN_LENGTH - 1:0] ramF_enable,
    output [$clog2(RAMY_EN_LENGTH) - 1:0] addr_h
);

    reg [ADDR_H_MAX - 1 : 0] addr;
    reg ram_done_delay;

    always_ff @(posedge clk or negedge reset_n) begin
        if (~reset_n) begin
            addr <= 0;
            ram_done_delay <= 0;
            ram_done <= 0;
        end
        else begin
            addr <= addr + 1'd1;
            ram_done_delay <= addr[ADDR_H_MAX - 1];
            ram_done <= ram_done_delay;

            ramF_enable <= 'd1 << addr[ADDR_H_MAX - 2 : ADDR_H_MIN - 1];
        end
    end

    assign addr_a = {addr, 1'b0};
    assign addr_b = {addr, 1'b1};
    assign addr_h = addr[ADDR_H_MAX - 1 : ADDR_H_MIN - 1];
    
endmodule
