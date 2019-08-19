module enge_dff(q , qbar , d , clk , reset);
	output q , qbar ;
	input d ,clk , reset ;
	always @(negedge clk)
	begin 
		q = d ;
		qbar = ~d ;
	end 

	always @(reset)
		if(reset)
				begin 
				assign q = 1'b0;
				assign qbar = 1'b1;
			end
		else
			begin 
				deassign q ;
				deassign qbar ;
			end
endmodule 

