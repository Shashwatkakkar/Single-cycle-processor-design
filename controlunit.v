`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:11 04/04/2020 
// Design Name: 
// Module Name:    controlunit 
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
module controlunit(
    input insmsb,
    input [5:0] func,
    output reg ALUsrc,
    output reg [3:0] ALUop,
    output reg Immsel
    );
always @(*)
begin
if(insmsb==1)
begin
Immsel <= 1;
end
else
begin
ALUop <= {{func[5]},func[2:0]};
Immsel <= insmsb;
if(func[5]==0)
begin
ALUsrc = 1;
end
else
begin
ALUsrc = 0;
end
end
end
endmodule
