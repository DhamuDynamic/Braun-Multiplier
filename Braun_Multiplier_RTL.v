// Braun Multiplier
module Braun_Multiplier(a,b,p);
	input [3:0] a;
	input [3:0] b;
	output [7:0] p;
	wire [14:0] pro;
	wire [5:0] s;
	wire [10:0] c;
	
	and a1(p[0],a[0],b[0]);
	// Partial Produts
	and a2(pro[0],a[1],b[0]);
	and a3(pro[1],a[0],b[1]);
	and a4(pro[2],a[2],b[0]);
	and a5(pro[3],a[1],b[1]);
	and a6(pro[4],a[0],b[2]);
	and a7(pro[5],a[3],b[0]);
	and a8(pro[6],a[2],b[1]);
	and a9(pro[7],a[1],b[2]);
	and a10(pro[8],a[0],b[3]);
	and a11(pro[9],a[3],b[1]);
	and a12(pro[10],a[2],b[2]);
	and a13(pro[11],a[1],b[3]);
	and a14(pro[12],a[3],b[2]);
	and a15(pro[13],a[2],b[3]);
	and a16(pro[14],a[3],b[3]);
	
	// Full Adders instantiation
	fa f1(p[1],c[0],pro[0],pro[1],1'b0);
	fa f2(s[0],c[1],pro[2],pro[3],c[0]);
	fa f3(s[1],c[2],pro[5],pro[6],c[1]);
	fa f4(s[2],c[3],pro[9],1'b0,c[2]);
	fa f5(p[2],c[4],s[0],pro[4],1'b0);
	fa f6(s[3],c[5],s[1],pro[7],c[4]);
	fa f7(s[4],c[6],s[2],pro[10],c[5]);
	fa f8(s[5],c[7],c[3],pro[12],c[6]);
	fa f9(p[3],c[8],s[3],pro[8],1'b0);
	fa f10(p[4],c[9],s[4],pro[11],c[8]);
	fa f11(p[5],c[10],s[5],pro[13],c[9]);
	fa f12(p[6],p[7],c[7],pro[14],c[10]);
endmodule
