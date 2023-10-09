`timescale 1ps/1ps
`include "barrett_reduction.sv"

module tb_barrett_reduction;
    reg [31:0] c; // Input
    wire [15:0] result; // Output
    
    reg [31:0] expected_result;
    
    // Instantiate the barrett_reduction module
    barrett_reduction dut (
        .c(c),
        .result(result)
    );

    // File handles for writing to the text files
    integer input_file, output_file;

    initial begin
        // Open the text files
        input_file = $fopen("input.txt", "w");
        output_file = $fopen("output.txt", "w");

        // Test with 1000 random 32-bit inputs
        for (integer i = 0; i < 1000; i = i + 1) begin
            // Generate a random 32-bit input
            c = $random;

            // Write the input to the input.txt file
            $fwrite(input_file, "%h\n", c);
            #10;
            // Wait for the uut to process the input

            // Compute the expected output
            expected_result = c % 3329;

            // Write the output and the expected output to the output.txt file
            $fwrite(output_file, "%h %h\n", result, expected_result);
        end

        // Close the text files
        $fclose(input_file);
        $fclose(output_file);
        #3000
        // Finish the simulation
        $finish;
    end

    initial begin
        // Not needed on Cloud V:
        $dumpfile("tb_barrett_reduction.vcd"); // Name of the signal dump file
        $dumpvars(0, tb_barrett_reduction); // Signals to dump
    end

endmodule
