`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 10:58:03
// Design Name: 
// Module Name: mips
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


module mips(
	input wire clk,resetn,
	input wire[5:0] int,
	output wire inst_sram_en,
	output wire[3:0] inst_sram_wen,
	output wire[31:0] inst_sram_addr,inst_sram_wdata,
	input wire[31:0] inst_sram_rdata,
	output wire data_sram_en,
	output wire[3:0] data_sram_wen,
	output wire[31:0] data_sram_addr,data_sram_wdata,
	input wire[31:0] data_sram_rdata,
	output wire[31:0] debug_wb_pc,
	output wire[3:0] debug_wb_rf_wen,
	output wire[4:0] debug_wb_rf_wnum,
	output wire[31:0] debug_wb_rf_wdata
    );
	
	wire [5:0] opD,functD;
	wire [1:0] regdstE; 
	wire alusrcE,pcsrcD,memtoregE,memtoregM,memtoregW,
			regwriteE,regwriteM;
	wire hilowriteM,stallM,flushM;
	wire [3:0] memwriteM;
	wire [7:0] alucontrolE;
	wire flushE,equalD,branchD,jumpD;
	wire [3:0] memwriteD;
	wire [2:0] memop;
    wire [4:0] rtD;
    wire [1:0]jumpop;
    wire jbalE,stallE;
    wire regwriteW,stallW,flushW;
    wire [31:0] pcF,aluoutM;
    wire no_dcache;

    assign inst_sram_en = 1'b1;
    assign inst_sram_wen = 4'd0;
    assign inst_sram_wdata = 32'd0;
    assign data_sram_en = (memwriteM!=4'b0000 || memtoregM!=1'b0) ? 1'b1 : 1'b0;
    assign data_sram_wen = memwriteM;
    assign debug_wb_rf_wen = {4{regwriteW}};
//    assign data_sram_addr = aluoutM;

    mmu mm(pcF,inst_sram_addr,aluoutM,data_sram_addr,no_dcache);
//    mmu mm(.inst_vaddr(pcF),.inst_paddr(inst_sram_addr),.data_vaddr(),.data_paddr(),.no_dcache(no_dcache));

	controller c(
		clk,~resetn,
		//decode stage
		opD,functD,rtD,
		// pcsrcD,
		branchD,
		// equalD,
		jumpD,
		memwriteD,
		memop,
		jumpop,
		//execute stage
		stallE, flushE,
		memtoregE,alusrcE,
		regdstE,regwriteE,	
		alucontrolE,
		jbalE,
		//mem stage
		stallM, flushM,
		memtoregM,
		// memwriteM,
		regwriteM,hilowriteM,
		//write back stage
		stallW, flushW,
		memtoregW,regwriteW
		);
	datapath dp(
		clk,~resetn,
		//fetch stage
		pcF,
		inst_sram_rdata,
		//decode stage
		// pcsrcD,
		branchD,
		jumpD,
		// equalD,
		opD,functD,rtD,
		jumpop,
		memwriteD,
		memop,
		//execute stage
		memtoregE,
		alusrcE,regdstE,
		regwriteE,
		alucontrolE,
		jbalE,
		stallE,flushE,
		//mem stage
		memtoregM,
		regwriteM,
		aluoutM,data_sram_wdata,
		data_sram_rdata,
		memwriteM,
		hilowriteM,
		stallM,flushM,
		//writeback stage
		memtoregW,
		regwriteW,
		stallW,flushW,
		debug_wb_pc,debug_wb_rf_wnum,
		debug_wb_rf_wdata
	    );
	
endmodule
