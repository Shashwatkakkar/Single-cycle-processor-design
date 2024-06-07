`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:31 04/03/2020
// Design Name:   regfile
// Module Name:   E:/xilinx/comparchassign/regfiletb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfiletb;

	// Inputs
	reg [4:0] readreg1;
	reg [4:0] readreg2;
	reg [4:0] writereg;
	reg [31:0] writedata;
	reg reset;

	// Outputs
	wire [31:0] data1;
	wire [31:0] data2;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.readreg1(readreg1), 
		.readreg2(readreg2), 
		.writereg(writereg),  
		.writedata(writedata), 
		.data1(data1), 
		.data2(data2),
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		readreg1 = 0;
		readreg2 = 0;
		writereg = 0;
		writedata = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		readreg1 = 'd1;
		readreg2 = 'd2;
		writereg = 'd3;
		writedata = 32'h1234;
		reset = 1;
		#100;
		readreg1 = 'd2;
		readreg2 = 'd3;
		writereg = 'd2;
		writedata = 32'h5234;
		reset = 1;
		#100;
		readreg1 = 'd7;
		readreg2 = 'd2;
		writereg = 'd7;
		writedata = 32'h5234;
		reset = 1;
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

