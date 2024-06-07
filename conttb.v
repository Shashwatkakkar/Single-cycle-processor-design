`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:14 04/04/2020
// Design Name:   controlunit
// Module Name:   E:/xilinx/comparchassign/conttb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controlunit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module conttb;

	// Inputs
	reg insmsb;
	reg [5:0] func;

	// Outputs
	wire ALUsrc;
	wire [3:0] ALUop;
	wire Immsel;
	wire regreset;

	// Instantiate the Unit Under Test (UUT)
	controlunit uut (
		.insmsb(insmsb), 
		.func(func), 
		.ALUsrc(ALUsrc), 
		.ALUop(ALUop), 
		.Immsel(Immsel),
		.regreset(regreset)
	);

	initial begin
		// Initialize Inputs
		insmsb = 0;
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
      insmsb =1;
		func = 6'b000000;
		#100;
      insmsb = 0;
		func = 6'b110000;
		#100;
		$finish;
		
		
		// Add stimulus here

	end
      
endmodule

