module fulladd(sum , cout , a , b , cin );
	output sum , cout ;
	input a , b , cin ;

	wire s1 , c1 , c2 ;

	xor (s1 , a , b );
	udp_add (c1 , a, b );

	xor ( sum , s1 , cin );
	udp_add ( c2 , s1 , cin );

	udp_or ( cout , c2 , c1 );
endmodule 
