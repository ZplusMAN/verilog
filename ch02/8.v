include "muxtwo.v"
module t ;
	reg ain , bin , select ;
	reg clock ;
	wire outw ; 
	initial 
	begin 
		ain = 0 ;
		bin = 0 ;
		select = 0 ;
		clock = 0 ;
	end 

	always #50 clock = ~clock ;
	always @( posedge clock )
	begin 
		#1 ain = { $random } % 2 ;
		#3 bin = { $random } % 2 ;
	end

	always #10000 select = ! select ;
	muxtwo m(.out(outw ) , .a(ain) , .b(bin), .sl(select));
endmodule 

