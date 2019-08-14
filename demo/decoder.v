module decode(a , f );
	parameter width = 1 , polarity = 1 ;
endmodule 

module top;
	wire [3:0] a4 ;
	wire [4:0] a5 ;
	wire [15:0] f16 ;
	wire [31:0] f32 ;
	decode #(4,0) d1(a4 , f16 );
	decode #(5) d2(a5, f32);

endmodule
