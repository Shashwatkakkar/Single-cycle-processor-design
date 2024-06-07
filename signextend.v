`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:47 04/04/2020 
// Design Name: 
// Module Name:    signextend 
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
module signextend(
    input [20:0] imm,
    input insmsb,
    output reg [31:0] out
    );
reg [4:0] shamt;
always @(*)
begin
if(insmsb==1)
begin
out <= 32'b0+imm;
end
else
begin
shamt <= imm[10:6];
out <= 32'b0+shamt;
end
end

endmodule
