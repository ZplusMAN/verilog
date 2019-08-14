module traffic_lights;
	reg clock , red , amber , green ;
	parameter on  = 1 , off = 0, red_tics = 350 , amber_tics = 30 , green_tics = 200 ;
	//交通灯初始化
	
	initial red  =off ;
	initial amber = off ;
	initial green = off ;
	
	//交通灯控制时序
	always 
	begin 
		red = on ;
		light( red , red_tics);
		green = on ;
		light( green , green_tics);
		amber =  on ;
		light( amber, amber_tics) ;
	end 

	task light ;
		output color ;
		input [3:0] tics ;
		begin 
			repeat(tics )
			@(posedge clock );
			color = off ;
		end 
	endtask 

	always 
	begin 
		#100 clock = 0 ;
		#100 clock = 1;
	end 
	
endmodule 
