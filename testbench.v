`timescale 1ns / 1ps

module testbench;

	reg [3:0] b;
	reg [4:0] ctrl;
	reg clock;
	wire [3:0] aa;
	wire cout;

	acc_4bit acc (
		.b(b), 
		.ctrl(ctrl), 
		.aa(aa), 
		.clk(clock),
		.cout(cout)
	);

	initial 
		begin
			b = 1;
			ctrl = 5'b01001;
			clock = 0;
		end
	always #50 clock = ~clock;
	always @(posedge clock) b = {$random}%16;
	
      
endmodule