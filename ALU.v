`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:20:54 04/04/2020 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input [31:0] data1,
    input [31:0] data2,
    input [3:0] ALUop,
    output reg [31:0] result
    );
always @(*)
begin
case(ALUop)
4'b1000: result = data1+data2;
4'b1010: result = data1-data2;
4'b1100: result = data1&data2;
4'b1101: result = data1|data2;
4'b0000: result = data1<<data2;
4'b0010: result = data1>>data2;
endcase
end
endmodule
