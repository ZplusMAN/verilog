module mux4to1(out , in0 , in1 , in2 , in3 , s1 ,s0 );
	output out ;
	input in0 , in1 , in2 , in3 ;
	input s1 , s0 ;

	assign out  = ( ~s1 & ~s0 & i0 ) | 
	       	      (~s1 & s0 & i1 ) | ( s1 & ~s0 & i2 ) | ( s1 & s0 & in3 );
	assign out = s1 ? ( s0 ? i3 : i2 ) : (s0 ? i1 : i0 );

endmodule 
