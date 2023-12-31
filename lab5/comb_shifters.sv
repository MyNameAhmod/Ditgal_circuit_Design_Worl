//
// lab5 : version 06/12/2020
// 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module comb_shifters (output logic [7:0] data_out, input logic [2:0] select,
	input logic [7:0] data_in);
	always_comb begin
		case(select)
		3'b001 : data_out = data_in << 1;
		3'b010 : data_out = data_in >> 1;
		3'b011 : data_out =	{data_in[6:0], data_in[7]};
		3'b100 : data_out =	{data_in[0], data_in[7:1]};
		3'b101 : data_out = $signed(data_in) >>> 1;
		3'b110 : data_out = {data_in[5:0],data_in[7:5]};
		3'b111 : data_out = $signed(data_in) >>> 5;
		default: data_out = data_in;
		endcase
	end
	// enter your code here

endmodule
