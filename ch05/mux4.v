// 使用case语句实现一个4选1多路选择器
//

module mux4_to_1 ( out , i0 , i1 , i2 , i3 , s1 , s0 );
	//根据输入输出图的端口声明
	
	output out ; 
	input i0 , i1 , i2 , i3 ;
	input s1 , s0 ;
	//把输出变量声明为寄存器变量
	//
	reg out ;
	//任何输入信号的改变都会引起输出信号的重新计算
	//使输出out重新计算的所有输入信号必须写入always @ (...)的变量列表中
	//
	always @(s1 or s0 or i0 or i1 or i2 or i3 )
	begin 
		case ({s1 , s0 } )
			2'b00 : out = i0 ;
			2'b01 : out = i1 ; 
			2'b10 : out = i2 ; 
			2'b11 : out = i3 ;
			default : out = 1'bx ;
		endcase 
	end 
endmodule 
