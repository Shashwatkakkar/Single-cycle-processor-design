`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:09:11 04/03/2020 
// Design Name: 
// Module Name:    insfetch 
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
module insfetch(
    input clk,
    input reset,
    output [31:0] inscode
    );
reg [31:0] pc;
insmem i1(.pc(pc),.inscode(inscode));
always @(posedge clk)
begin
if(reset==1)
begin
pc <= 0;
end
else
begin
pc <= pc+4;
end
end
endmodule
