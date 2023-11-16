`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module sr_latch (output logic qa, output logic qb, input logic s,
	input logic r);
   
   // add your code here
   assign  qa = ~(s | qb);
	assign  qb = ~(r | qa);

endmodule