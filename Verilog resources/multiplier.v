`include "fulladder.v"
//`timescale 1ns/10ps

module multiplier(p,a,b);

//--------------------Defining inputs-------------------------

output [7:0] p;

input [3:0] a,b;

wire [11:0] c;

wire [5:0] s;

wire [3:0] pp0,pp1,pp2,pp3; // pp stands for partial product

//-----------------Initializing partial product---------------

assign pp0=a&{4{b[0]}};

assign pp1=a&{4{b[1]}};

assign pp2=a&{4{b[2]}};

assign pp3=a&{4{b[3]}};

and a1(p[0],a[0],b[0]); //Anding A0 and B0 and storing it in P0

//------------------Calling fulladder----------------------------

fulladder f1(p[1],c[0],pp0[1],pp1[0],1'b0); //p1

fulladder f2(s[0],c[1],pp0[2],pp1[1],c[0]);

fulladder f3(s[1],c[2],pp0[3],pp1[2],c[1]);

fulladder f4(s[2],c[3],1'b0,pp1[3],c[2]);

fulladder f5(p[2],c[4],s[0],pp2[0],1'b0); //p2

fulladder f6(s[3],c[5],s[1],pp2[1],c[4]); 

fulladder f7(s[4],c[6],s[2],pp2[2],c[5]); 

fulladder f8(s[5],c[7],c[3],pp2[3],c[6]);

fulladder f9(p[3],c[8],s[3],pp3[0],1'b0); //p3

fulladder f10(p[4],c[9],s[4],pp3[1],c[8]); //p4

fulladder f11(p[5],c[10],s[5],pp3[2],c[9]); //p5

fulladder f12(p[6],c[11],c[7],pp3[3],c[10]); //p6

//-----------------------P7 is assigned final carry-------------------
assign p[7]=c[11]; //p7

endmodule




