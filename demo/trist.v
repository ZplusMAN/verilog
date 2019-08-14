module trist2(out , in , enable );
	output out ;
	input in ,enable ;
	bufif1 mybuf(out , in , enable );
endmodule 
