module adder_8(count , sum , a , b, cin );
	output count ;
	output [7:0] sum ;
	input cin ;
	input [7:0] a , b;
	assign {count , sum } = a + b + cin ;
endmodule 
