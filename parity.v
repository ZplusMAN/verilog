module parity;
	reg [31:0] addr ;
	reg parity ;

	always @(addr)
	begin 
		parity = calc_parity(addr);
		$display("Parity calculated = %b " , calc_parity(addr));
	end 

	function calc_parity_c(input [31:0] address);
		begin 
			calc_parity_c= ^address ;
		end
	endfunction 
	function calc_parity ;
		input [31:0] address ;
		begin 
			calc_parity = ^address ;
		end 
	endfunction 
endmodule 
