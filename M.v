module M(out , a, b, c, d );
	output out ;
	input a , b, c , d ;
	wire e , f ;

	specify
		if (a) (a => out ) = 9 ;
		if (~a) (a => out ) = 9 ;
		(b => out ) = 9 ;
		(c => out ) = 11 ;
		(d => out ) = 11 ;
	endspecify 

	and a1( e , a,b );
	and a2(f ,c ,d );
	and a3(out , e, f )l
endmodule 
		
