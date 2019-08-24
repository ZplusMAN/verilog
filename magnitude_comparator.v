module magnitude_comparator(a_gt_b , a_lt_b , a_eq_b , a , b );
	output a_eq_b, a_gt_b, a_lt_b;
	input [3:0] a , b ;

	assign a_gt_b = (a > b );
	assign a_lt_b = (a < b );
	assign a_eq_b = (a == b );
endmodule 
module stimulus;
	reg [3:0] a , b ;
	wire a_gt_b , a_lt_b , a_eq_b ;

	magnitude_comparator MC(a_gt_b , a_lt_b, a_eq_b, a , b );
	initial 
		$monitor($time , "a = %b , b = %b , a_gt_b = %b , a_lt_b = %b , a_eq_b = %b ", a , b, a_gt_b, a_lt_b, a_eq_b );


	initial 
		begin 
			//
		end
endmodule 
