module muxtwo( a, b, sl , out );
	input a, b, , sl ; // 输入信号名
	output out ; //输出信号名
	wire nsl , sela , selb ;
	assign nsl = ~sl ;
	assign sela = a & nsl ;
	assign selb = b & sl ;
	assign out = sela | selb ;
endmodule 

