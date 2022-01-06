`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:21:30
// Design Name: 
// Module Name: controller
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


module controller(
	input wire clk,rst,
	//decode stage
	input wire[5:0] opD,functD,
	input wire[4:0] rtD,
	// output wire pcsrcD,
	output wire branchD,
	// output wire equalD,
	output wire jumpD,
	output wire[3:0] memwriteD,
	output wire[2:0] memop,
	output wire [1:0] jumpop,
	//execute stage
	input wire stallE, flushE,
	output wire memtoregE,alusrcE,
	output wire [1:0]regdstE,
	output wire regwriteE,	
	output wire[7:0] alucontrolE,
	output wire jbalE,

	//mem stage
	input wire stallM, flushM,
	output wire memtoregM,
	// output wire [3:0] memwriteM,
	output wire regwriteM,hilowriteM,
	//write back stage
	input wire stallW, flushW,
	output wire memtoregW,regwriteW

    );
	
	//decode stage
	// wire[1:0] aluopD;
	wire memtoregD,alusrcD;
	wire [1:0] regdstD;
	wire regwriteD;
	wire[7:0] alucontrolD;
	wire jbalD;
	wire hilowriteD;

	//execute stage
	// wire [3:0] memwriteE;
	// wire [3:0] memwriteM;
	wire hilowriteE;


	maindec md(
		opD,
		functD,
		rtD,
		memtoregD,memwriteD,
		branchD,alusrcD,
		regdstD,regwriteD,
		jumpD,
		// aluopD,
		memop,
		hilowriteD,
		jbalD,
		jumpop
		);
	aludec ad(functD,opD,alucontrolD);

	// assign pcsrcD = branchD & equalD;

	//pipeline registers
	flopenrc #(20) regE(
		clk,rst,
		~stallE,
		flushE,
		{memtoregD,alusrcD,regdstD,regwriteD,alucontrolD,hilowriteD,jbalD},
		{memtoregE,alusrcE,regdstE,regwriteE,alucontrolE,hilowriteE,jbalE}
		);
	flopenrc #(9) regM(
		clk,rst,
		~stallM,
		flushM,
		{memtoregE,regwriteE,hilowriteE},
		{memtoregM,regwriteM,hilowriteM}
		);
	flopenrc #(8) regW(
		clk,rst,
		~stallW,
		flushW,
		{memtoregM,regwriteM},
		{memtoregW,regwriteW}
		);
endmodule
