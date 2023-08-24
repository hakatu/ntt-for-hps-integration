module mult161632 #(
    parameter WIDIN = 16,
    parameter WIDOUT = 32
) (
    input logic [WIDIN-1:0] input_1,
    input logic [WIDIN-1:0] input_2,
    output logic [WIDOUT-1:0] mulout
);
    
assign mulout = input_1*input_2;

endmodule