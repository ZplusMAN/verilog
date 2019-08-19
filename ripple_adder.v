module ripple_adder(co , sum , a0 , a1 , ci );
	parameter N = 4 ;

	output [N-1:0] sum ;
	output co ;
	input [N-1:0] a0 , a1 ;
	input ci ;

	wire [N-1:0] carry ;
	assign carry[0] = ci ;

	genvar i ;
	generate for( i = 0 ; i < N ; i= i + 1) 
	begin :r_loop 
		wire t1 , t2 , t3;
		xor g1(t1, a0[i], a1[i]);
		xor g1(sum[i] , a0[i] , carry[i]);
		and g3(t2 , a0[i] , a1[i]);
		or g5(carry[i+1] ,t2, t3 );
	end
	endgenerate 
	assign co = carry[N] ;
endmodule 
