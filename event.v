module event;
	event received_data ;
	always @( posedge clock )
	begin 
		if (last_data_packet )
			->received_data ;
	end 
	

	always @(received_data )
		data_buf = in ;
endmodule 
