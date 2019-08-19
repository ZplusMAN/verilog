module demo(out , data , control);
	input data , control;
	output out ;


	nmos n1(out , data, control );
	pmos p1(out , data , control );
	cmos  c1(out , data , ncontrol , pcontrol );
	cmos (out , data , ncontrol , pcontrol );
	tran t1(inout1 , inout2 ) ;
	tranif0 (inout1 , inout2 , control );
	tranif1 (inout1 , inout2 , control );
	supply1 vdd ;
	supply0 gnd ;
	assign a = vdd ;
	assign b = gnd ;

	rnmos rpmos rcmos rtran rtranif1 rtranif0 
endmodule 
