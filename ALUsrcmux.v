`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:56:29 04/04/2020 
// Design Name: 
// Module Name:    ALUsrcmux 
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
module ALUsrcmux(
    input [31:0] data1,
    input [31:0] data2,
    input ALUsrc,
    output reg [31:0] aluinput
    );
always @(*)
begin
case(ALUsrc)
0: aluinput = data1;
1: aluinput = data2;
endcase
end

endmodule
