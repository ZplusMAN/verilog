module counter(q , clock , clear );
	output [3:0] q ;
	input clear , clock ;
	T_FF tff0(q[0] , clock , clear );
	T_FF tff1(q[1] , q[0] , clear );
	T_FF tff2(q[2] , q[1] , clear );
	T_FF tff3(q[3] , q[2] , clear );
endmodule 

module T_FF(q , clk , clear) ;
	output q ;
	input clk , clear ;

	edge_dff ff1(q , ~q , clk,clear );

endmodule 
