//通过连续赋值语句描述一个比较器的Verilog HDL 程序

module compare(equal , a , b );
	output equal;
	input [1:0] a , b;
	assign equal = ( a == b )? 1 : 0 ;
endmodule 

