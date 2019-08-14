module compare(equal , a, b );
	parameter size = 1 ;
	output equal ;
	input [size-1:0] a , b ;

	assign equal = ( a == b ) ? 1 :0 ;
endmodule 
