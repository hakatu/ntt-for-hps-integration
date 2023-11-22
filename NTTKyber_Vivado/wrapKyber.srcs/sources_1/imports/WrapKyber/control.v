`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 04:02:12 PM
// Design Name: 
// Module Name: control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module control(clk,rst,start,mode_in,crt_sig,mode_out,newloop,wen,done,cal_done,in_done);
    input clk,rst;
    input start;
    input mode_in;
    input crt_sig;
    output reg [1:0] mode_out;
    output reg wen;
    output reg newloop;
    //output reg [15:0] counter;
    output reg done;
    output reg cal_done;
    output reg in_done;
//    output reg [7:0] counter5; //counter calculate 
//    output reg [31:0] counter6; //counter calculate 
    //output reg [31:0] counter3; //counter calculate each layer
    //reg [15:0] counter;
    reg [31:0] counter1; //counter input
    reg [7:0] counter2; //counter layer
    reg [31:0] counter3; //counter calculate each layer
    reg [31:0] counter4; //counter output
    reg [7:0] counter5; //counter calculate 
    reg [31:0] counter6; //counter calculate 
    parameter NTT = 2'b00;
    parameter INTT = 2'b01;
    parameter IN = 2'b10;
    parameter OUT = 2'b11;
    //reg in_done;
    //reg cal_done;
    always@(posedge clk)
    begin
        if (rst)
        begin 
            counter1 <= 0;
            counter2 <= 0;
            counter3 <= 0;
            counter4 <= 0;
            counter5 <= 0;
            counter6 <= 0;
            newloop <= 0;
            wen <= 0;     
            done <= 0;
            cal_done <= 0;
            in_done <= 0;
        end
        else
        begin 
            if (!start)
            begin
                if (in_done == 0)
                    mode_out <= IN;
                if (cal_done)
                    mode_out <= OUT;
                if ((in_done) & (cal_done == 0))
                    mode_out <= mode_in ? INTT : NTT;
                case (mode_out)
                NTT,INTT: begin
                    if (crt_sig) 
                    begin
                        newloop <= 1;
                        counter3 <= 0;
                        counter5 <= 0;
                        counter6 <= 0;
                        counter6 <= counter6 + 1;
                        if (counter6 == 1)
                        begin
                            counter2 <= counter2 + 1;
                            counter6 <= 0;
                        end
                        if ((mode_out == NTT) & (counter2 == 6))
                        //if (counter2 == 7)
                        begin
                            cal_done <= 1;
                        end
                        if ((mode_out == INTT) & (counter2 > 6))
                        //if (counter2 == 7)
                        begin
                            cal_done <= 1;
                        end
                    end
                    else
                    begin
                        newloop <= 0;
                        counter3 <= counter3 + 1;
                        counter5 <= counter5 + 1;
                        if (counter3 == 1) //neu khong duoc thi sua len 1
                            newloop <= 1;
                        else if (counter3 < 4)
                        begin
                            wen <= 0; 
                            counter5 <= 0;
                        end
                        else
                        begin
                            if (counter5 == 11)
                            begin
                                wen <= 1; 
                                //counter5 <= 0; 
                                //counter6 <= counter6 + 1;
                            end    
                            else if(counter5 == 14)
                            begin
                                wen <= 0; 
                                counter5 <= 0; 
                            end
                            else 
                            begin
                                wen <= 0; 
                            end    
                        end
                    end
                end
                IN: begin
                    counter1 <= counter1 + 1;
                    //counter5 <= counter5 + 1;
                    counter6 <= counter6 + 1;
                    //wen <= 1; 
                    if (counter1 == 0)
                        newloop <= 1;
                    else 
                    begin 
                        newloop <= 0;
                        if (counter6 > 1)
                        begin
                            counter5 <= counter5 + 1;  
                            if (counter5 == 3)
                                begin
                                    wen <= 1; 
                                    counter5 <= 0; 
                                    //counter6 <= counter6 + 1;
                                end 
                            else
                            begin
                                wen <= 0;
                            end 
                        end   
                        else
                        begin
                            wen <= 0;
                        end
                    end
                    if (counter1 > 258)
                    begin
                        in_done <= 1;
                        wen <= 0;
                        counter6 <= 0;
                    end
                end
                OUT: begin
                    counter4 <= counter4 + 1;
                    wen <= 0;
                    if (counter4 == 0)
                        newloop <= 1;
                    else 
                        newloop <= 0;  
                    if (counter4 == 258)
                        done <= 1;
                end
                endcase 
            end
        end
    end        
endmodule

