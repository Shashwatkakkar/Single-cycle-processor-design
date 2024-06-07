`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:29:30 04/03/2020
// Design Name:   insfetch
// Module Name:   E:/xilinx/comparchassign/insfetchtb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: insfetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module insfetchtb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] inscode;

	// Instantiate the Unit Under Test (UUT)
	insfetch uut (
		.clk(clk), 
		.reset(reset), 
		.inscode(inscode)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		repeat(60)
		#5 clk =~ clk;

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
	initial begin
	reset = 1;
	#10;
	reset = 0;
	#20;
	reset = 0;
	#20;
	reset = 1;
	#20;
	$finish;
	end
	
      
endmodule

