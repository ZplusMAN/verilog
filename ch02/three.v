module muxtwo(out , a, b, sl );
	input a , b , sl ;
	output out ;
	not u1(nsl , sl );
	and #1 u2(sela , a,nsl );

