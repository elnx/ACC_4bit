//==================================================================================================
//  Filename      : acc_4bit.v
//  Created On    : 2014-12-03 20:00:11
//  Last Modified : 2014-12-03 20:37:42
//  Revision      : 
//  Author        : elnx
//  Email         : p4ngb0y@gmail.com
//
//  Description   : An accumulator built on my alu_4bit.
//
//
//==================================================================================================
module acc_4bit(ctrl, b, aa, clk);
	input [3:0] b;
	input [4:0] ctrl;//ctrl = {m, s}
	input clk;//clock signal
	output [3:0] aa;
	wire [3:0] aa;
	wire cout_re;
	reg [3:0] a = 4'b0000;
	alu_4bit ALU (
		.a(a), 
		.b(b), 
		.s(ctrl[3:0]), 
		.m(ctrl[4]), 
		.cin_re(1'b1), 
		.cout_re(cout_re), 
		.y(aa)
	);
	always @(posedge clk) 
		begin
			if (cout_re == 1'b0) 
				begin
					a <= 4'b0000;
				end
			else 
				begin
					a <= aa;
				end
		end
endmodule