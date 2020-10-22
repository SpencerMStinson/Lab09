`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:23:18 AM
// Design Name: 
// Module Name: register_testbench
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


module alu_testbench();
    reg [7:0] in0_t;
    reg [7:0] in1_t;
    reg [3:0] op_t;
    reg [7:0] out_t;


alu #(.N(8)) dut(
    .in0(in0_t),
    .in1(in1_t),
    .op(op_t),
    .out(out_t)
);
initial begin 
    in0_t =  2; in1_t = 1; op_t = 1; #10;
    in0_t =  4; in1_t = 2; op_t = 2; #10;
    in0_t =  8; in1_t = 3; op_t = 3; #10;
    in0_t = 8'b00010110; in1_t = 4; op_t = 4; #10;
    in0_t = 8'b00110010; in1_t = 5; op_t = 5; #10;
    in0_t = 8'b00110100; in1_t = 6; op_t = 1; #10;
    $finish; 
end

endmodule 