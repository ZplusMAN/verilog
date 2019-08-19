module shifter;
	`define LEFT_SHIFT 1'b0
	`define RIGHT_SHIFT 1'b1
	reg [31:0] addr , left_addr , right_addr ;
	reg control ;

	always @( addr) 
	begin 
		left_addr = shift(addr , `left_addr);
		right_addr = shift(addr , `right_addr	);
	end 

	function [31:0] shift;
		input [31:0] address ;
		input control ;
		begin 
			shift = (control == `LEFT_SHIFT)? (address<<1):(address >> 1);
		end 
	endfunction 
endmodule 


