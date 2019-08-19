module mux4_1(out , in ,  sel );
	input [3:0] in ;
	input [1:0] sel ;
	output out ;

	case (sel):
			2'b00 : out = in[0];
			2'b01 : out = in[1] ;
			2'b10 : out = in[2];
			2'b11 : out = in[3] ;
			default : out = 4'bz;

	endcase

endmodule 

module mux4to1(out , i0 , i1 , i2 , i3, s0 , s1 );
	output out ;
	input i0 , i1 , i2 , i3 ;
	input s0 , s1 ;

	wire s1n , s0n ;
	wire y0 , y1 ,y2, y3;

	not (sln ,s1n );
	not (s0n , s0 );

	and (y0 , i0 , s1n , s0n );
	and (y1 , i1 , s1n , s0 );
	and (y2 , i2 , s1 , s0n );
	and (y3 , i3 , s1 , s0 );

	or (out , y0 , y1 , y2 , y3 );
endmodule

module stimulus ;
	reg IN0 , IN1 , IN2 , IN3 ;
	reg S0 , S1 ;

	wire OUTPUT ;
	mux4to1 mymux(OUTPUT , IN0, IN1 , IN2 , IN3 , S1 , S0 );

	initial 
		begin 
			IN0 = 1 , IN1 = 0 , IN2 = 1 , IN3 = 0 ;
			#1 display("IN0 = %b ,IN1 = %b , IN2 = %b , IN3 = %b \n",IN0 , IN1 , IN2, IN3);

