//`timescale 1ns/10ps
module fulladder(s,c,a,b,cin);

output s,c;

input a,b,cin;

assign{c,s}=a+b+cin;

endmodule


