`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:32:27 04/04/2020
// Design Name:   ALU
// Module Name:   E:/xilinx/comparchassign/alutb.v
// Project Name:  comparchassign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutb;

	// Inputs
	reg [31:0] data1;
	reg [31:0] data2;
	reg [3:0] ALUop;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.data1(data1), 
		.data2(data2), 
		.ALUop(ALUop), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		data1 = 0;
		data2 = 0;
		ALUop = 0;

		// Wait 100 ns for global reset to finish
		#100;
		data1 = 'd1;
		data2 = 'd2;
		ALUop = 4'b1000;
		#100;
		data1 = 'd4;
		data2 = 'd3;
		ALUop = 4'b0010;
		#100;
		data1 = 'd1;
		data2 = 'd2;
		ALUop = 4'b1101;
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

