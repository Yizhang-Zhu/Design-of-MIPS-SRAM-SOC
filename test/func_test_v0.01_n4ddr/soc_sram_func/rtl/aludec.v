`timescale 1ns / 1ps

`include "defines.vh"

module aludec(
	input wire[5:0] funct,
	input wire[5:0] op,
	output wire[7:0] alucontrol
    );
	reg[7:0] alucontrol_tp;
	always @(*) begin
		case (op)
			// logic instruction for imm, judge by op6 part
			`EXE_ANDI:alucontrol_tp <= `EXE_ANDI_OP; // andi
        	`EXE_XORI:alucontrol_tp <= `EXE_XORI_OP; // xori
        	`EXE_LUI:alucontrol_tp <= `EXE_LUI_OP;   // lui
        	`EXE_ORI:alucontrol_tp <= `EXE_ORI_OP;   // ori
        	// shift instruction - none
        	// calculate instruction for imm, judge by op6 part
        	`EXE_ADDI: alucontrol_tp <= `EXE_ADDI_OP; // addi
			`EXE_ADDIU: alucontrol_tp <= `EXE_ADDIU_OP; // addiu
			`EXE_SLTI: alucontrol_tp <= `EXE_SLTI_OP; // slti
			`EXE_SLTIU: alucontrol_tp <= `EXE_SLTIU_OP; //sltiu
            // load/store
            `EXE_LB: alucontrol_tp <= `EXE_LB_OP; //lb
            `EXE_LBU: alucontrol_tp <= `EXE_LBU_OP; //lbu
            `EXE_LH: alucontrol_tp <= `EXE_LH_OP; //lh
            `EXE_LHU: alucontrol_tp <= `EXE_LHU_OP; //lhu
            `EXE_LW: alucontrol_tp <= `EXE_LW_OP; //lw
            `EXE_SB: alucontrol_tp <= `EXE_SB_OP; //sb
            `EXE_SH: alucontrol_tp <= `EXE_SH_OP; //sh
            `EXE_SW: alucontrol_tp <= `EXE_SW_OP; //sw

        	`EXE_NOP:case(funct) // R-type instruction, judge by funct6 part
        		// R-type logic instruction
        		`EXE_AND:alucontrol_tp <= `EXE_AND_OP; // and
        		`EXE_OR:alucontrol_tp <= `EXE_OR_OP;   // or
        		`EXE_XOR:alucontrol_tp <= `EXE_XOR_OP; // xor
        		`EXE_NOR:alucontrol_tp <= `EXE_NOR_OP; // nor
        		// R-type shift instruction
        		`EXE_SLL:alucontrol_tp <= `EXE_SLL_OP; // sll
        		`EXE_SRL:alucontrol_tp <= `EXE_SRL_OP; // srl
        		`EXE_SRA:alucontrol_tp <= `EXE_SRA_OP; // sra
        		`EXE_SLLV:alucontrol_tp <= `EXE_SLLV_OP; // sllv
        		`EXE_SRLV:alucontrol_tp <= `EXE_SRLV_OP; // srlv
        		`EXE_SRAV:alucontrol_tp <= `EXE_SRAV_OP; // srav
        		// R-type move instruction
        		`EXE_MFHI:alucontrol_tp <= `EXE_MFHI_OP; // mfhi, from hi
        		`EXE_MTHI:alucontrol_tp <= `EXE_MTHI_OP; // mthi, to hi
        		`EXE_MFLO:alucontrol_tp <= `EXE_MFLO_OP; // mflo, from lo
        		`EXE_MTLO:alucontrol_tp <= `EXE_MTLO_OP; // mtlo, to lo
        		// R-type calculate instruction
        		`EXE_ADD:alucontrol_tp <= `EXE_ADD_OP;  // add
				`EXE_ADDU:alucontrol_tp <= `EXE_ADDU_OP; // addu
				`EXE_SUB:alucontrol_tp <= `EXE_SUB_OP; // sub
				`EXE_SUBU:alucontrol_tp <= `EXE_SUBU_OP; //subu
				`EXE_SLT:alucontrol_tp <= `EXE_SLT_OP; //slt
				`EXE_SLTU:alucontrol_tp <= `EXE_SLTU_OP; // sltu
				`EXE_MULT:alucontrol_tp <= `EXE_MULT_OP; // mult
				`EXE_MULTU:alucontrol_tp <= `EXE_MULTU_OP; // multu
				`EXE_DIV:alucontrol_tp <= `EXE_DIV_OP; // div
				`EXE_DIVU:alucontrol_tp <= `EXE_DIVU_OP; //divu

				default: alucontrol_tp <= 8'b0;
                endcase
        default: alucontrol_tp <= 8'b0;
        endcase
	
	end
	assign alucontrol = alucontrol_tp;
endmodule
