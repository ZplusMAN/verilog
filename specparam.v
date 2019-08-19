module demo;
	specify 
		specparam d_to_q = 9 ;
		specparam clk_to_q = 11 ;
		
		( d => q ) = d_to_q ;
		( clk => q ) = clk_to_q;
	endspecify 
endmodule 
