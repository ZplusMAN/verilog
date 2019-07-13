module demo( a , b , out );
	input a , b ;
	output out ;
	fork 
		#250 -> end_wave ;
		#200 r = 'hF7 ;
		#150 r = 'h00 ;
		#100 r = 'hE2 ;
		#50  r = 'h35 ;
	join 
endmodule 

