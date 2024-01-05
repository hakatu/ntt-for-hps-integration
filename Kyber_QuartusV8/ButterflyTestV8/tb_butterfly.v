`timescale 1ns / 1ps

module tb_butterfly;

    // Inputs
    reg clk;
    reg [15:0] a;
    reg [15:0] b;
    reg [15:0] w;
    reg [1:0] mode;

    // Outputs
    wire [15:0] c;
    wire [15:0] d;

    // Instantiate the Unit Under Test (UUT)
    butterfly uut (
        .clk(clk),
        .a(a), 
        .b(b), 
        .w(w), 
        .mode(mode), 
        .c(c), 
        .d(d)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 50MHz clock
    end

    // Test stimulus
    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        w = 0;
        mode = 2'b00; // NTT mode

        // Apply test stimulus
        #100; // Wait for 100ns
        a = 16'h00FF; // Assign some value
        b = 16'hFFEE; // Assign some value
        w = 16'h0010; // Assign some value

        #200; // Wait for 20ns for NTT operation
        // Check results for NTT operation
        a = 16'h0ca5;
        b = 16'h025a;
        w = 16'd3121;
        mode = 2'b01; // INTT mode
        // Reuse or change values of a, b, w as needed
        #20;
        #200; // Wait for 20ns for INTT operation
        // Check results for INTT operation

        // Additional test cases can be added here

        // Finish the simulation
        #100; 
        $finish;
    end
      
endmodule