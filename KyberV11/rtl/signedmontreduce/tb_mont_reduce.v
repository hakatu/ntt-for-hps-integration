`timescale 1ns / 1ps

module tb_mont_reduce;

    // Testbench variables
    reg signed [31:0] a;
    wire signed [15:0] result;

    // Instantiate the mont_reduce module
    mont_reduce uut (
        .a(a),
        .result(result)
    );

    // Test stimulus
    initial begin
        // Initialize input
        a = 0;
        #10; // Wait for 10ns

        // Apply different test values
        a = 32'd5000;   // Test with a positive value
        #10;
        a = -32'd5000;  // Test with a negative value
        #10;
        a = 32'd1234567890; // Test with a large positive value
        #10;
        a = -32'd1234567890; // Test with a large negative value
        #10;

        // Finish the simulation
        $finish;
    end

    // Display results
    initial begin
        $monitor("Time = %t, Input = %d, Result = %d", $time, a, result);
    end

endmodule
