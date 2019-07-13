module demo(a , b, c, clk );
	input a ;
	output c ;
	reg a ; 
	reg b ;
	reg c ;

	always @(posedge clk )
	begin b <= a ;
		c <= b ;
	end 
endmodule 
