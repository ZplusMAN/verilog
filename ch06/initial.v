module demo;
	initial 
	begin 
		areg = 0 ;
		for ( index = 0 ; index < size ; index = index + 1 ) 
			memory[ index ] = 0 ;
	end 
endmodule 
