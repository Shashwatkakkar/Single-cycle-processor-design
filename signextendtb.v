`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:57 04/04/2020
// Design Name:   signextend
// Module Name:   E:/xilinx/comparchassign/signextendtb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signextend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signextendtb;

	// Inputs
	reg [20:0] imm;
	reg insmsb;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	signextend uut (
		.imm(imm), 
		.insmsb(insmsb), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		imm = 0;
		insmsb = 0;

		// Wait 100 ns for global reset to finish
		#100;
		imm = 20'h12345;
		insmsb = 1;
      #100;
		imm = 20'h12ff5;
		insmsb = 0;
		#100;
		$finish;
		// Add stimulus here

	end
      
endmodule

