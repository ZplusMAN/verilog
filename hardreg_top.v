module hardreg_top;
	reg clock , clearb ;
	reg [3:0] data ;
	wire [3:0] qout ;
	`define stim #100 data=4'b 
	event end_first_pass ;
	hardreg reg_4bit( .d(data) , .clk(clock), .clrb(clearb), .q(qout));

	initial 
		begin 
			clock = 0 ;
			clearb = 1 ;
		end

	always #50 clock = ~clock;

	always @( end_first_pass)
		$display("at time %0d clearb = %b data = %d qout = %d " , $time , clearb , data , qout );

	initial 
		begin 
			repeat(2)
			begin 
				data = 4'b0000;
				`stim0001 ;
				`stim0010 ;
				`stim0100 ;
				`stim0101 ;
			end

				#200 ->end_first_pass  ;
				$finish;
		end

endmodule 

