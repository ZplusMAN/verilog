//采用两个模块的三态门选择器
//
module trist1( sout , sin , ena );
	output sout ;
	input sin , ena ; 
	mytri tri_inst(.out(sout) , .in(sin), .enable(ena));
endmodule 

module mytri(out , in , enable );
	output out ; 
	input in , enable ;
	assign out = enable ? in : 'bz;
endmodule 
