module demo( a , b , cin , out );
	input a , b , cin ;
	output out ;
	reg out ;
	output counter ;

	always @( posedge cin )
	begin 
		tick = ~tick ;
		counter = counter + 1 ;
	end 
endmodule 

