`timescale 1ns / 1ps

module tb_barret_reduce;

    // Testbench variables
    reg signed [15:0] a;
    wire signed [15:0] result;

    // Instantiate the barret_reduce module
    barret_reduce uut (
        .a(a),
        .result(result)
    );

    // Test stimulus
    initial begin
        // Initialize input
        a = 0;
        #10; // Wait for 10ns

        // Apply different test values
        a = 16'd1000;   // Test with a positive value
        #10;
        a = -16'd1000;  // Test with a negative value
        #10;
        a = 16'd5423; // Test with a larger positive value
        #10;
        a = -16'd2000; // Test with a larger negative value
        #10;

        // Finish the simulation
        $finish;
    end

    // Display results
    initial begin
        $monitor("Time = %t, Input = %d, Result = %d", $time, a, result);
    end

endmodule
