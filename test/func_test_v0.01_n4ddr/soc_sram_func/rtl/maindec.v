`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:21:30
// Design Name: 
// Module Name: maindec
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
`include "defines.vh"

module maindec(
	input wire[5:0] op,
	input wire[5:0] funct,
	input wire[4:0] rtD,
	output wire memtoreg,
	output wire [3:0]memwrite,
	output wire branch,alusrc,
	output wire [1:0] regdst,
	output wire regwrite,
	output wire jump,
	output wire [2:0] memop,
	output wire hilowrite,
	output wire jbal,
	output wire [1:0] jumpop
    );
	reg[17:0] controls;
//	assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,aluop,memop} = controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,memop,hilowrite,jbal,jumpop} = controls;
	always @(*) begin
		case (op)
//			6'b000000:controls <= 18'b101000000000000000;//R-TYRE
            6'b000000:begin
                case(funct)
                    `EXE_MFHI:controls <= 18'b1_01_00_0000_000000000;//mfhi
			         `EXE_MTHI:controls <= 18'b0_10_00_0000_000001000;//mthi
			         `EXE_MFLO:controls <= 18'b1_01_00_0000_000000000;//mflo
			         `EXE_MTLO:controls <= 18'b0_10_00_0000_000001000;//mtlo
			         `EXE_MULT:controls <= 18'b0_01_00_0000_000001000;
		          	`EXE_MULTU:controls <= 18'b0_01_00_0000_000001000;
		          	`EXE_DIV:controls <= 18'b0_01_00_0000_000001000;
		          	`EXE_DIVU:controls <= 18'b0_01_00_0000_000001000;
		          	6'b001000:controls <= 18'b0_00_00_0000_010000010;//JR
			         6'b001001:controls <= 18'b1_01_00_0000_010000110;//JALR
                default:controls <= 18'b101000000000000000;
                endcase
                
            end
			6'b001100:controls <= 18'b1_00_10_0000_000000000;//andi
			6'b001110:controls <= 18'b1_00_10_0000_000000000;//xori
			6'b001111:controls <= 18'b1_00_10_0000_000000000;//lui
			6'b001101:controls <= 18'b1_00_10_0000_000000000;//ori
			
			
			
			// 新增load指令
			6'b100011:controls <= 18'b1_00_10_0000_100000000;//LW
			6'b100001:controls <= 18'b1_00_10_0000_100010000;//LH
			6'b100101:controls <= 18'b1_00_10_0000_100100000;//LHU
			6'b100000:controls <= 18'b1_00_10_0000_100110000;//LB
			6'b100100:controls <= 18'b1_00_10_0000_101000000;//LBU
			// 新增store指令
			6'B101000:controls <= 18'b0_00_10_0000_001010000;//SB
			6'b101001:controls <= 18'b0_00_10_0000_001100000;//SH
			6'b101011:controls <= 18'b0_00_10_0000_001110000;//SW
			
            // 新增branch指令
			6'b000100:controls <= 18'b0_00_01_0000_000000000;//BEQ
			6'b000111:controls <= 18'b0_00_01_0000_000000000;//BGTZ
			6'b000110:controls <= 18'b0_00_01_0000_000000000;//BLEZ
			6'b000101:controls <= 18'b0_00_01_0000_000000000;//BNE
			6'b000001:begin
			     case (rtD)
			     5'b00000:controls <= 18'b0_00_01_0000_000000000;//BLTZ
			     5'b10000:controls <= 18'b1_10_01_0000_000000100;//BLTZAL
			     5'b10001:controls <= 18'b1_10_01_0000_000000100;//BGEZAL
			     5'b00001:controls <= 18'b0_00_01_0000_000000000;//BGEZ
			     default:controls <= 18'b0;
			     endcase
			end
			
			// 新增jump指令
			6'b000010:controls <= 18'b0_00_00_0000_010000001;//J
			6'b000011:controls <= 18'b1_10_00_0000_010000101;//JAL

			
			6'b001000:controls <= 18'b1_00_10_0000_000000000;//ADDI
			6'b001001:controls <= 18'b1_00_10_0000_000000000;//ADDIU
			`EXE_SLTI:controls <= 18'b1_00_10_0000_000000000;//SLTI
            `EXE_SLTIU:controls <= 18'b1_00_10_0000_000000000;//SLTIU
			default:  controls <= 18'b00000000000000000;//illegal op
		endcase
	end
endmodule
