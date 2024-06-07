`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:49:12 04/04/2020 
// Design Name: 
// Module Name:    writebackmux 
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
module writebackmux(
    input [31:0] data1,
    input [31:0] data2,
    input immsel,
    output reg [31:0] out
    );
always @(*)
begin
case(immsel)
0: out = data1;
1: out = data2;
endcase
end
endmodule
