`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/22 10:23:13
// Design Name: 
// Module Name: hazard
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hazard(
	//fetch stage
	output wire stallF,flushF,
	//decode stage
	input wire[4:0] rsD,rtD,
	input wire branchD,jumpD,
	output reg[1:0] forwardaD,forwardbD,
	output wire stallD,flushD,
	//execute stage
	input wire[4:0] rsE,rtE,
	input wire[4:0] writeregE,
	input wire regwriteE,
	input wire memtoregE,stall_divE,
	output reg[1:0] forwardaE,forwardbE,
	output wire stallE, flushE,
	//mem stage
	input wire[4:0] writeregM,
	input wire regwriteM,
	input wire memtoregM,
	output wire stallM, flushM,

	//write back stage
	input wire[4:0] writeregW,
	input wire regwriteW,
	output wire stallW, flushW
    );

	wire lwstallD,branchstallD;

	//forwarding sources to D stage (branch equality)
//	assign forwardaD = (rsD != 0 & rsD == writeregM & regwriteM);
//	assign forwardbD = (rtD != 0 & rtD == writeregM & regwriteM);
	always @(*) begin
		forwardaD = 2'b00;
		forwardbD = 2'b00;
		if(rsD != 0) begin
			/* code */
			if((rsD == writeregE) && regwriteE) begin
				/* code */
				forwardaD = 2'b01;
			end else if((rsD == writeregM) && regwriteM) begin
				/* code */
				forwardaD = 2'b10;
			end else if((rsD == writeregE) && regwriteE) begin
				/* code */
				forwardaD = 2'b01;
			end else if((rsD == writeregW) && regwriteW) begin
				/* code */
				forwardaD = 2'b11;
			end
		end
		if(rtD != 0) begin
			/* code */
			if((rtD == writeregE) && regwriteE) begin
				/* code */
				forwardbD = 2'b01;
			end else if((rtD == writeregM) && regwriteM) begin
				/* code */
				forwardbD = 2'b10;
			end else if((rtD == writeregW) && regwriteW) begin
				/* code */
				forwardbD = 2'b11;
			end
		end
	end
	
	//forwarding sources to E stage (ALU)

	always @(*) begin
		forwardaE = 2'b00;
		forwardbE = 2'b00;
		if(rsE != 0) begin
			/* code */
			if((rsE == writeregM) && regwriteM) begin
				/* code */
				forwardaE = 2'b10;
			end else if((rsE == writeregW) && regwriteW) begin
				/* code */
				forwardaE = 2'b01;
			end
		end
		if(rtE != 0) begin
			/* code */
			if((rtE == writeregM) && regwriteM) begin
				/* code */
				forwardbE = 2'b10;
			end else if((rtE == writeregW) && regwriteW) begin
				/* code */
				forwardbE = 2'b01;
			end
		end
	end

	//stalls
	assign #1 lwstallD = memtoregE & (rtE == rsD | rtE == rtD);
//	assign #1 branchstallD = branchD &
//				(regwriteE & 
//				(writeregE == rsD | writeregE == rtD) |
//				memtoregM &
//				(writeregM == rsD | writeregM == rtD));
    assign branchstallD = ((branchD||jumpD) && regwriteE && (writeregE == rsD || writeregE == rtD) || 
                            (branchD||jumpD) && memtoregM && (writeregM == rsD || writeregM == rtD));

	assign #1 stallD = lwstallD | branchstallD | stall_divE;
	assign #1 stallF = stallD;
	assign #1 stallE = branchstallD | stall_divE;
	assign #1 stallM = 0;
	assign #1 stallW = 0;
		//stalling D stalls all previous stages
	assign #1 flushE = lwstallD | branchstallD;
	assign #1 flushF = 0;
	assign #1 flushD = 0;
	assign #1 flushM = 0;
	assign #1 flushW = 0;
//	assign #1 flushM = stall_divE;
		//stalling D flushes next stage
	// Note: not necessary to stall D stage on store
  	//       if source comes from load;
  	//       instead, another bypass network could
  	//       be added from W to M
endmodule
