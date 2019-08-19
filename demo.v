module demo;

	nand #10 nd1(a ,data, clock , clear );
	integer counter ;
	initial 
		counter = -1 ;
	real delta ;
	initial 
		begin 
			delta = 4e10 ;
			delta = 2.13;
		end
	integer i ;
	initial 
		i = delta ;
	//verilog使用一个特殊的时间寄存器数据类型来保存仿真时间
	time save_time ;
	initial 
		save_time = $time ;
	integer count[0:7];
	reg bool[31:0] ;
	time chk_point[1:100] ;
	reg [3:0] port_id [0:7];
	localparam state1= 4'b0001,
		   state2 = 4'b0010;




endmodule 
