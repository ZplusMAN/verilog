module shift;
	reg [3:0] start , result ;
	initial ;
		begin ;
			start = 1 ; // start在初始时刻被设置为1 
			result = ( start << 2 );
			//移位后, start的值为0100 ,然后赋值给result
		end 
endmodule 

