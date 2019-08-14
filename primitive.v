primitive demo(out , in1 , in2 , in3 );
	output out ;
	input in1 , in2 , in3;
	reg out ;
	
	initial 
	begin 
		out = 1 ;
	end

	table 
		// in1 	in2 in3 out 
		0 	0	0 	0 
	endtable 
endprimitive

