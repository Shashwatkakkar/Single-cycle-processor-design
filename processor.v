`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:49 04/04/2020 
// Design Name: 
// Module Name:    processor 
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
module processor(
    input clk,
    input reset
    );
wire [31:0] inscode;
wire [31:0] datareg1;
wire [31:0] data2;
wire [31:0] imm;
wire [31:0] muxinputALU;
wire [31:0] ALUoutput;
wire [31:0] writedata;
wire [3:0] ALUop;
wire ALUsrc;
wire [31:0] regtomux;
wire [31:0] muxtoalu;
wire Immsel;

insfetch i1(.clk(clk),.reset(reset),
.inscode(inscode));

regfile id(.readreg1(inscode[20:16]),.readreg2(inscode[15:11]),
.writereg(inscode[25:21]),.writedata(writedata),
.data1(datareg1),.data2(regtomux)
);

ALU i2(.data1(datareg1),.data2(muxtoalu),
.ALUop(ALUop),.result(ALUoutput)
);

signextend immgen(.imm(inscode[20:0]),.insmsb(inscode[31]),
.out(imm));

ALUsrcmux mux1(.data1(regtomux),.data2(imm),
.ALUsrc(ALUsrc),.aluinput(muxtoalu));

writebackmux wb(.data1(ALUoutput),.data2(imm),
.immsel(Immsel),.out(writedata));

controlunit cu(.insmsb(inscode[31]),.func(inscode[5:0]),
.ALUsrc(ALUsrc),.ALUop(ALUop),
.Immsel(Immsel));

always @(posedge clk)
begin
end

endmodule
