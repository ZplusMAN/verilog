module D(out , a, b, c );
	output out ;
	input a , b , c;

	wire e ;

	and #(5) al(e , a, b );
	or #(4) ol( out , e , c );
endmodule 
