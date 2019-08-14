module demo( a, b , out );
	input a , b ;
	output out ;
	reg [15:0] rega ;
	reg [9:0] result ;
	case (rega )
		16'd0 : result = 10'b01111111111;
		default :result = 10'bx ;
	endcase 
	case (select([1:2])
		2'b00: result = 0 ;
		2'b01: result = flaga;
		default : result = 1;
	endcase 
	

endmodule 

