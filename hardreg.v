module hardreg(d , clk , clrb , q );
	input clk , clrb ;
	input [3:0] d ;
	output [3:0] q ;

	flop f1(d[0] , clk , clrb , q[0] ,),
	f2(d[1] , clk , clrb , q[1], ), 
	f3(d[2] , clk , clrb , q[2],  ),
	f4(d[3] , clk , clrb , q[3],  );
endmodule 

