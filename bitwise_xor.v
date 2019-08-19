module bitwise_xor(out , i0 , i1 );
	parameter N = 32;

	output [N-1:0] out;
	input [N-1:0] i0 ,i1 ;

	genvar j ;
	generate for( j = 0 ; j < N ; j = j + 1 ) 
	begin :xor_loop
		xor g1( out[j] , i0[j] , i1[j] );
	end 
	endgenerate

	reg [N-1:0] out ;
	generate for( j = 0 ; j < N ; j= j  +1 ) 
	begin :bit 
		always @(i0[j] or i1[j] )
			out[j] = i0[j] ^ i1[j] ;
	end
	endgenerate
endmodule 
