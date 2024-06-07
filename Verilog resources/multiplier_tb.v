`include "multiplier.v"
//`timescale 1ns/10ps

//---------------------------Defining inputs---------------------------------

module multiplier_tb;

reg [3:0] A,B;

wire [7:0] Product;

//------------------------Module Instantiation--------------------------------
multiplier m0(Product,A,B);

initial
    begin
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0,multiplier_tb);
    end

initial #200 $finish;

initial 
   begin

       //A=4'd1; B=4'd3;

       //#10 
       //A=4'd2; B=4'd5;

       #0
       A=4'd15; B=4'd15;

       //#10
       //A=4'd11; B=4'd13;

    end

always @(Product)

//------------------display product whenever it gets changed----------------------

$display("time =%0t \t A =%b, B =%b and Product =%b",$time,A,B,Product);

endmodule




