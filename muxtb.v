`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:52:06 04/04/2020
// Design Name:   writebackmux
// Module Name:   E:/xilinx/comparchassign/muxtb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: writebackmux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtb;

	// Inputs
	reg [31:0] data1;
	reg [31:0] data2;
	reg immsel;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	writebackmux uut (
		.data1(data1), 
		.data2(data2), 
		.immsel(immsel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		data1 = 0;
		data2 = 0;
		immsel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		data1 = 'd1;
		data2 = 'd2;
		immsel = 0;
		#100;
		data1 = 'd1;
		data2 = 'd2;
		immsel = 1;
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

