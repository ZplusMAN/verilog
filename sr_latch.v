module sr_larch(q , qbar , sbar , rbar );
	output q , qbar;
	input sbar, rbar ;

	nand n1(q , sbar , qbar );
	nand n2(qbar , rbar , q );
endmodule 

module top;
	wire q , qbar ;
	reg set , reset ;

	sr_larch m1(q , qbar , set , reset );

	initial 
		begin 
			$monitor($time ,"set = %b ,reset = %b , q = %b \n", set , reset , q );
			set = 0 ;
			reset = 0 ;
			#5 reset = 1 ;
			#5 reset = 0 ;
			#5 set = 1 ;
		end 
endmodule

