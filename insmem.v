`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:43 04/03/2020 
// Design Name: 
// Module Name:    insmem 
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
module insmem(
    input [31:0] pc,
    output reg [31:0] inscode
    );
reg [7:0] Mem [31:0];
always @(pc)
begin
$readmemh("Instruction.mem",Mem);
inscode <= {Mem[pc+3],Mem[pc+2],Mem[pc+1],Mem[pc]};
end
endmodule
