module dff1(q , qb , d , clk , set , reset ) ;
	input d , clk , set , reset;
	output q , qb ;

	always @( posedge clk or posedge set or posedge reset )
	begin 
		if ( reset ) 
		begin 
			q = 0 ;
			qb = 1 ;
		end 
		else if (set ) 
		begin 
			q = 1 ;
			qb = 0 ;
		end 
		else 
		begin 
			q = d ;
			q = ~d ;
		end 
	end 
endmodule 
