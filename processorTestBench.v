`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:04:58 04/05/2020
// Design Name:   processor
// Module Name:   E:/xilinx/comparchassign/processortb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module processorTestBench;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		repeat(60)
		#5 clk =~ clk;
		$finish;
		end
		
		initial begin
		reset = 0;
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		reset = 0;
		#50;
		$finish;
		end

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
      
endmodule

