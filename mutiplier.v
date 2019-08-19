module multplier(product , a0 , a1 );

	parameter a0_width = 8;
	parameter a1_width = 8 ;
	localparam product_width = a0_width * a1_width ;

	output [product_width
