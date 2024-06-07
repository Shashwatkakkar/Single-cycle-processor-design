`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:10:09 04/03/2020
// Design Name:   insmem
// Module Name:   E:/xilinx/comparchassign/memtb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: insmem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memtb;

	// Inputs
	reg [31:0] pc;
	reg reset;

	// Outputs
	wire [31:0] inscode;

	// Instantiate the Unit Under Test (UUT)
	insmem uut (
		.pc(pc), 
		.reset(reset),
		.inscode(inscode)
	);

	initial begin
		// Initialize Inputs
		pc = 'd0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pc = 'd1;
		reset = 0;
		#100;
		pc = 'd2;
		reset = 1;
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

