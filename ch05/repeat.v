module demo;
	parameter size = 8 ; longsize = 16 ;
	reg [size:1] shift_opa , shift_opb  ;
	shift_opa  = opa ; 
	shift_opb = opb ;
	result = 0 ;
	repeat(size)
