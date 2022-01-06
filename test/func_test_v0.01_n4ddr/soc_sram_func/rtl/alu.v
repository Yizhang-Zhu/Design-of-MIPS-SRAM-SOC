`timescale 1ns / 1ps

`include "defines.vh"

module alu(
	input wire clk, rst,
	input wire[31:0] a,b,
	input wire[7:0] op,
	input wire[4:0] sa, // shamt
	input wire[63:0] hilo_i, // hilo reg input
	output wire[31:0] y,
	output wire[63:0] hilo_o, // hilo reg output
	output wire overflow,
	output wire zero,
	output wire stall_div
    );
    reg[31:0] y_tp;
    reg[63:0] hilo_tp;
    reg stall_div_tp;
    wire [31:0] sadd;
    wire [31:0] ssub;

//===============================================add,addu,addi,addiu,sub,subu
	// wire[31:0] s,bout;
	// assign bout = op[1] ? ~b : b;
	// assign s = a + bout + op[1];
//===============================================

//===============================================slt,slti
    wire[31:0] slt_s;
    assign slt_s = a[31]!=b[31] ? {a[31],31'b0} : a+~b+1'b1;
//===============================================

//===============================================sltu,sltiu
    wire[32:0] slt_su;
    assign slt_su = {1'b0,a} + ~{1'b0,b} + 1'b1;
//===============================================

//===============================================div,divu
    reg div_start,div_sign;
    wire div_done;
    wire[31:0] quotient,remainder;
    div diviser(clk,rst,a,b,div_start,div_sign,quotient,remainder,div_done);
    always @(*) begin
        case(op)
            `EXE_DIV_OP: begin
                if(div_done == 1'b0) begin
                    div_start <= 1'b1;
                    div_sign <= 1'b1;
                    stall_div_tp <=1'b1;
                end
                else if (div_done == 1'b1) begin
                    div_start <= 1'b0;
                    div_sign <= 1'b1;
                    stall_div_tp <=1'b0;
                end
                else begin
                    div_start <= 1'b0;
                    div_sign <= 1'b0;
                    stall_div_tp <= 1'b0;
                end
            end
            `EXE_DIVU_OP: begin
                if(div_done == 1'b0) begin
                    div_start <= 1'b1;
                    div_sign <= 1'b0;
                    stall_div_tp <=1'b1;
                end
                else if (div_done == 1'b1) begin
                    div_start <= 1'b0;
                    div_sign <= 1'b0;
                    stall_div_tp <=1'b0;
                end
                else begin
                    div_start <= 1'b0;
                    div_sign <= 1'b0;
                    stall_div_tp <=1'b0;
                end
            end
            default:begin
                div_start <= 1'b0;
                div_sign <= 1'b0;
                stall_div_tp <=1'b0;
            end
        endcase
    end
    assign stall_div = stall_div_tp;
//===============================================

//===============================================mult
    wire [31:0] mult_a,mult_b;
    wire [63:0] hilo_temp;
    assign mult_a = ((op==`EXE_MULT_OP)&&(a[31]==1'b1))?(~a+1):a;
    assign mult_b = ((op==`EXE_MULT_OP)&&(b[31]==1'b1))?(~b+1):b;
    assign hilo_temp = ((op==`EXE_MULT_OP)&&(a[31]^b[31] == 1'b1)) ? ~(mult_a*mult_b)+1 : mult_a*mult_b;
//===============================================


	always @(*) begin
		case (op)
			// logic instruction
			`EXE_AND_OP: y_tp <= a & b;
			`EXE_OR_OP: y_tp <= a | b;
			`EXE_XOR_OP: y_tp <= a ^ b;
			`EXE_NOR_OP: y_tp <= ~(a | b);
			`EXE_ANDI_OP: y_tp <= a & b;
            `EXE_ORI_OP: y_tp <= a | b;
            `EXE_XORI_OP: y_tp <= a ^ b;
            `EXE_LUI_OP: y_tp <= {b[15:0], b[31:16]}; // 将16立即数imm写入寄存器rt的高16位
            // shift instruction
            `EXE_SLL_OP: y_tp <= b << sa;
            `EXE_SRL_OP: y_tp <= b >> sa;
            `EXE_SRA_OP: y_tp <= ({32{b[31]}} << (6'd32 - {1'b0, sa})) | b >> sa;
            `EXE_SLLV_OP: y_tp <= b << a[4:0];
            `EXE_SRLV_OP: y_tp <= b >> a[4:0];
            `EXE_SRAV_OP: y_tp <= ({32{b[31]}} << (6'd32 - {1'b0, a[4:0]})) | b >> a[4:0];
            // HILO register ralated instruction
            `EXE_MFHI_OP: y_tp <= hilo_i[63:32]; // from HI to GR
            `EXE_MTHI_OP: y_tp <= b; // from GR to HI
            `EXE_MFLO_OP: y_tp <= hilo_i[31:0]; // from LO to GR
            `EXE_MTLO_OP: y_tp <= b; // from GR to LO
            // calculate instruction
			`EXE_ADD_OP: y_tp <= sadd;
			`EXE_ADDU_OP: y_tp <= sadd;
			`EXE_ADDI_OP: y_tp <= sadd;
			`EXE_ADDIU_OP: y_tp <= sadd;
			`EXE_SUB_OP: y_tp <= ssub;
			`EXE_SUBU_OP: y_tp <= ssub;
			`EXE_SLT_OP: y_tp <= slt_s[31];
			`EXE_SLTU_OP: y_tp <= slt_su[32];
			`EXE_SLTI_OP: y_tp <= slt_s[31];
			`EXE_SLTIU_OP: y_tp <= slt_su[32];
			// `EXE_DIV_OP: hilo_tp <= {remainder,quotient};
			// `EXE_DIVU: hilo_tp <= {remainder,quotient};
			// `EXE_MULT_OP: hilo_tp <= hilo_temp;
			// `EXE_MULTU_OP: hilo_tp <= {32'b0, a} * {32'b0, b};
            // load/store instruction
            `EXE_LB_OP: y_tp <= sadd;
            `EXE_LBU_OP: y_tp <= sadd;
            `EXE_LH_OP: y_tp <= sadd;
            `EXE_LHU_OP: y_tp <= sadd;
            `EXE_LW_OP: y_tp <= sadd;
            `EXE_SB_OP: y_tp <= sadd;
            `EXE_SH_OP: y_tp <= sadd;
            `EXE_SW_OP: y_tp <= sadd;
			default : y_tp <= 32'b0;
		endcase	
	end
	assign zero = (y == 32'b0);
	assign y = y_tp;

	// hilo_o output
	always @(*) begin
		case (op)
			`EXE_MTHI_OP: hilo_tp <= {a[31:0], {hilo_i[31:0]}};
            `EXE_MTLO_OP: hilo_tp <= {{hilo_i[63:32]}, a[31:0]};
            `EXE_DIV_OP: hilo_tp <= {remainder,quotient};
            `EXE_DIVU: hilo_tp <= {remainder,quotient};
            `EXE_MULT_OP: hilo_tp <= hilo_temp;
            `EXE_MULTU_OP: hilo_tp <= {32'b0, a} * {32'b0, b};
			default : hilo_tp <= hilo_i;
		endcase
	end

	assign hilo_o = hilo_tp;
    assign sadd = a + b;
    assign ssub = a - b; 
    assign overflow = ((op==`EXE_ADD_OP)|(op==`EXE_ADDI_OP)) ? ((a[31] & b[31] & ~sadd[31] )|( ~a[31] & ~b[31] & sadd[31])) :
                    (op==`EXE_SUB_OP) ? ((a[31] & ~b[31]& ~ssub[31])|(~a[31] & b[31] & ssub[31])) : 1'b0;
	
endmodule
