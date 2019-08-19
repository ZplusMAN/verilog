module fulladd4(sum , c_out , a , b, cin );
	output [3:0] sum ;
	output c_out;
	input [3:0] a , b ;
	input cin ;

	assign { c_out , sum } = a +b  +cin ;
endmodule 
