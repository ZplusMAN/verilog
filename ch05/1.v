module demo(a , b , out );
	input a , b ; 
	output out ;
	always @(a | b )
	begin 
		if( a < b )
			out = a ; 
		else if ( a == b ) 
			out = b ;
		else 
			out = a  | b ;
	end 
endmodule 
