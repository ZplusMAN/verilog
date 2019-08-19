module top;
	function automatic integer factorial ;
		input [31:0] oper ;
		integer i ;
		begin 
			if(oper  >=2 )
				factorial = factorial(oper-1)*oper ;
			else 
				factorial = 1;
		end
	endfunction 

	integer result ;
	initial 
	begin 
		result = factorial(4);
	end
endmodule 

