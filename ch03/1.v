module block( a, b, , c , d);
	input a , b ;
	output c , d ;
	assign c = a | b ;
	assign d = a & b ;
endmodule 
