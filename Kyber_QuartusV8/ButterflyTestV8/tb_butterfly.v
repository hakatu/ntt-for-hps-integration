`timescale 1ps/1ps
//`include "barrett_reduction.sv"

module tb_butterfly;

    reg clk;
    reg [15:0] a,b,w;
    reg [1:0] mode;

    // Instantiate the barrett_reduction module
    butterfly dut (
        .clk(clk),
        .mode(mode),
        .a(a),
        .b(b),
        .w(w),
        .c(c),
        .d(d)
    );

    always begin
        #1 clk = ~clk;
    end
    // File handles for writing to the text files
    integer input_file, output_file;

    initial begin
        // Open the text files
        nttinputa = $fopen("nttinputa.txt", "w");
        nttinputb = $fopen("nttinputb.txt", "w");
        nttoutputc = $fopen("nttoutputc.txt", "w");
        nttoutputd = $fopen("nttoutputc.txt", "w");
        mode = 2'b00; //NTT
        w = 1;
        // Close the text files
        #10000;
        $fclose(nttinputa);
        $fclose(nttinputb);
        $fclose(nttoutputc);
        $fclose(nttoutputd);
        #3000
        // Finish the simulation
        $finish;
    end
    always@(posedge clk) begin
        // Test with 1000 random 32-bit inputs
            // Generate a random 32-bit input
            a = $random;
            b = $random;
            // Write the input to the input.txt file
            $fwrite(nttinputa, "%h\n", a);
            $fwrite(nnttinputb, "%h\n", b);
            // Be reminded there's a 9 clocks delay
            $fwrite(nttoutputc, "%h\n", c);
            $fwrite(nttoutputd, "%h\n", d);
        end

    initial begin
        // Not needed on Cloud V:
        $dumpfile("tb_butterfly.vcd"); // Name of the signal dump file
        $dumpvars(0, tb_butterfly); // Signals to dump
    end

//    initial begin
//        // Not needed on Cloud V:
//        $fsdbDumpfile("tb_butterfly.fsdb"); // Name of the signal dump file
//        $fsdbDumpvars(0, tb_butterfly); // Signals to dump
//    end

endmodule