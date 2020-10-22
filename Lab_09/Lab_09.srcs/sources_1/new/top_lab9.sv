`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:33:10 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input [11:0] sw,
    input clk,
    input btnC,
    output [15:0] led
    );
   
    wire [7:0] reg1_out;
    wire [7:0] alu_out;
   
    register #(.N(8)) Reg1 (
        .clk(clk),
        .rst(btnC),
        .en(btnD),
        .D(sw[7:0]),
        .Q(reg1_out)
    );
    assign led [7:0] = reg1_out; 
   
    alu     ALU (
        .in0(sw[7:0]),
        .in1(reg1_out),
        .op(sw[11:8]),
        .out(alu_out)
    );
    
    register #(.N(8)) Reg2 (
        .clk(clk),
        .en(btnU),
        .rst(btnC),
        .D(alu_out),
        .Q(led [15:8])
    );

endmodule
