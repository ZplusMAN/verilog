module hello_world;
	parameter num_id = 0 ;
	initial 
		$display("Display hello_world id number = %d " , num_id);
endmodule 

module top;
	defparam w1.num_id = 1, w2.num_id = 2; 
	hello_world w1();
	hello_world w2();
endmodule 

