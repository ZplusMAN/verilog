module module_name(input port1 , input port2 , output port3 , output port4);
	parameter wordsize = 16 ;
	parameter memsize = 256 ;

	wire a ;
	wire [8:1] b ;
	wire [4:1] c , d ;
	reg [7:0] mema[255:0];
	//对存储器进行地址索引的表达式必须是常量表达式
	
	reg [wordsize - 1 : 0 ] mem[memsize -1: 0 ] , writereg , readreg ;
	reg [n - 1 : 0 ] rega ; // 一个n位寄存器
	reg mema[n-1 : 0 ] ;// 一个有n个一位寄存器构成的存储器件



endmodule 

