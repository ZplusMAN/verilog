module sequence;
	reg clock ;

	initial 
		init_sequence ;
	always 
	begin 
		asymmetric_sequence;
	end

	task init_sequence ;
		begin 
			clock = 1'b0;
		end 
	endtask 

	task asymmetric_sequence;
		begin 
			#12 clock = 1'b0;
			#5 clock = 1'b1;
			#3 clock = 1'b0;
			#10 clock = 1'b1;
		end
	endtask 
endmodule 

module demo;
	task automatic bitwise_xor;
	endtask
endmodule 

