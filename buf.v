module demo;
	wire [7:0] OUT , IN1 ,IN2;
	bufif1 b1(out , in , ctrl );
	bufif0 b2(out , in , ctrl);

	notif1 n1(out , in , ctrl );
	notif0 n2(out , in , ctrl ) ;

	nand n_gate[7:0] (OUT ,IN1,IN2);
	//基本门的实例引用 实例数组
	
endmodule 
