module fbosc2(y1 , y2 , clk , rst );
	output y1 , y2 ;
	input clk , rst ;
	reg y1 , y2 ;

	always @( posedge clk or posedge rst )
		if (rst)
			y1 <= 0 ;
		else 
			y1 <= y2 ;

	always @(posedge clk or posedge rst) 
		if (rst )
			y2 <= 1 ;
		else
			y2 <= y1 ;
endmodule 
