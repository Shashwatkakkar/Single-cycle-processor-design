`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:04 04/03/2020 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
    input [4:0] readreg1,
    input [4:0] readreg2,
    input [4:0] writereg,
    input [31:0] writedata,
    output reg [31:0] data1,
    output reg [31:0] data2
    );
reg [31:0] fixreg [31:0];
always @(readreg1 or readreg2 or writereg or writedata)
begin
data1 <= fixreg[readreg1];
data2 <= fixreg[readreg2];
fixreg[writereg] <= writedata;
end
endmodule
