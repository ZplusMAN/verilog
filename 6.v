//三态门选择器
//
module trist2(out , in , enable );
	output out ; 
	input in , enable ;
	//buff1 是一个三态驱动器原件
	//具体名字是mybuf 
	//这种引用现成原件或模块的做法叫做实例化或者实例引用
	bufif1 mybuf(out , in , enable );
endmodule 
