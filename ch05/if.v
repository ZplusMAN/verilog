module demo( lock , a , b , out ) ;
	input lock , a , b ;
	output out ;
	if ( !lock ) buffer = data ;
	if (enable ) out = in ;

	if ( number_queued < MAX_Q_DEPTH )
	begin 
		data_queue = data ;
		number_queued = number_queued + 1 ;
	end 
	else 
		$display ( "Queue full . Try again ");


	if (alu_control ==  0 ) 
		y = x + z ;
	else if (alu_control ==1 ) 
		y = x - z ;
	else if (alu_control == 2 ) 
		y = x * z ;
	else 
		$ display( "Invalid ALU control signal ");

endmodule 
