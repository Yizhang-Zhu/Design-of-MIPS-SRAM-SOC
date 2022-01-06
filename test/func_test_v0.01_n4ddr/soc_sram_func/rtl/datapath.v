`timescale 1ns / 1ps


module datapath(
	input wire clk,rst,
	//fetch stage
	output wire[31:0] pcF,
	input wire[31:0] instrF,
	//decode stage
	// input wire pcsrcD,
	input wire branchD,
	input wire jumpD,
	// output wire equalD,
	output wire[5:0] opD,functD,
	output wire[4:0] rtD,
	input wire[1:0] jumpop,
	input wire[3:0] memwriteD,
	input wire[2:0] memopD,
	//execute stage
	input wire memtoregE,
	input wire alusrcE,
	input wire[1:0]regdstE,
	input wire regwriteE,
	input wire[7:0] alucontrolE,
	input wire jbal,
	output wire stallE, flushE,
	//mem stage
	input wire memtoregM,
	input wire regwriteM,
	output wire[31:0] aluoutM,writedataM,
	input wire[31:0] readdataM,
	output wire[3:0] memwriteM,
	input wire hilowriteM,
	output wire stallM, flushM,
	//writeback stage
	input wire memtoregW,
	input wire regwriteW,
	output wire stallW, flushW,
	output wire[31:0] pcW,
	output wire[4:0] writeregW,
	output wire[31:0] resultW
    );
	
	//fetch stage
	wire stallF;
	//FD
	wire [31:0] pcnextFD,pcnextbrFD,pcplus4F,pcbranchD;
	//decode stage
	wire [4:0] saD;
	wire [31:0] pcplus4D,instrD,pcD;
	wire [1:0]forwardaD,forwardbD;
	wire [4:0] rsD,rdD;
	wire flushD,stallD; 
	wire [31:0] signimmD,signimmshD;
	wire [31:0] srcaD,srca2D,srcbD,srcb2D;
	wire pcsrcD;
	reg pc_tp;
	//execute stage
	wire [4:0] saE;
	wire [1:0] forwardaE,forwardbE;
	wire [4:0] rsE,rtE,rdE;
	wire [4:0] writeregE;
	wire [31:0] signimmE,pcE;
	wire [31:0] srcaE,srca2E,srcbE,srcb2E,srcb3E;
	wire [31:0] aluoutE;
	wire [63:0] hilo_inE;
	wire [31:0] aluout;
	wire [3:0]memwriteE;
	wire [2:0]memopE;
	wire [31:0]pcplus4E;
	wire stall_divE;
	//mem stage
	wire [4:0] writeregM;
	wire [63:0] hilo_inM, hilo_outM;
	wire [2:0]memopM;
	wire stall_divM;
	wire [31:0] writedataM1,pcM;
	//writeback stage
	wire [31:0] aluoutW,readdataW,readdata2W;
	wire [2:0] memopW;

	// 临时变量
	reg [3:0] temp;
	reg [31:0] temp1,temp2;
	reg [31:0] writedata;

	//hazard detection
	hazard h(
		//fetch stage
		stallF,flushF,
		//decode stage
		rsD,rtD,
		branchD,jumpD,
		forwardaD,forwardbD,
		stallD,flushD,
		//execute stage
		rsE,rtE,
		writeregE,
		regwriteE,
		memtoregE,stall_divE,
		forwardaE,forwardbE,
		stallE,flushE,
		//mem stage
		writeregM,
		regwriteM,
		memtoregM,
		stallM, flushM,
		//write back stage
		writeregW,
		regwriteW,
		stallW, flushW
		);

	//next PC logic (operates in fetch an decode)
	mux2 #(32) pcbrmux(pcplus4F,pcbranchD,pcsrcD,pcnextbrFD);
	mux3 #(32) pcmux(pcnextbrFD,
		{pcplus4D[31:28],instrD[25:0],2'b00},
		srca2D,jumpop,pcnextFD);

	//regfile (operates in decode and writeback)
	regfile rf(clk,regwriteW,rsD,rtD,writeregW,resultW,srcaD,srcbD);

	//fetch stage logic
	pc #(32) pcreg(clk,rst,~stallF,pcnextFD,pcF);
	adder pcadd1(pcF,32'd4,pcplus4F);
	//decode stage
	flopenrc #(32) r1D(clk,rst,~stallD,flushD,pcplus4F,pcplus4D);
	flopenrc #(32) r2D(clk,rst,~stallD,flushD,instrF,instrD);
//	flopr #(32) r3D(clk,rst,pcF,pcD);
	flopenrc #(32) r3D(clk,rst,~stallD,flushD,pcF,pcD);
	signext se(instrD[15:0], instrD[29:28],signimmD);
	sl2 immsh(signimmD,signimmshD);
	assign saD = instrD[10:6];
	adder pcadd2(pcplus4D,signimmshD,pcbranchD);
	mux4 #(32) forwardamux(srcaD,aluoutE,aluoutM,resultW,forwardaD,srca2D);
	mux4 #(32) forwardbmux(srcbD,aluoutE,aluoutM,resultW,forwardbD,srcb2D);
	// eqcmp comp(srca2D,srcb2D,equalD);

	assign opD = instrD[31:26];
	assign functD = instrD[5:0];
	assign rsD = instrD[25:21];
	assign rtD = instrD[20:16];
	assign rdD = instrD[15:11];

    always@(*) begin
	       case(opD)
	       // beq
	           6'b000100:pc_tp <= (srca2D == srcb2D) ? 1'b1 : 1'b0;
	        // bgtz
	           6'b000111:pc_tp <= (srca2D[31] == 0 && srca2D !=0 ) ? 1'b1 : 1'b0;
	       // blez
	           6'b000110:pc_tp <= (srca2D[31] == 1  || srca2D == 0) ? 1'b1 : 1'b0;
	       // bne
	           6'b000101:pc_tp <= (srca2D == srcb2D) ? 1'b0 : 1'b1;
	           6'b000001:begin
	               case (rtD)
	                   // bltz
	                   5'b00000:pc_tp <= (srca2D[31] == 1) ? 1'b1 : 1'b0;
	                   // bltzal
	                   5'b10000:pc_tp <= (srca2D[31] == 1) ? 1'b1 : 1'b0;
	                   // bgez
	                   5'b00001:pc_tp <= (srca2D[31] == 0 ) ? 1'b1 : 1'b0;
	                   // bgezal
	                   5'b10001:pc_tp <= (srca2D[31] == 0) ? 1'b1 : 1'b0;
	                   default:pc_tp <= 1'b0;
	               endcase
	           end
	       default:pc_tp <= 1'b0;
	       endcase
	end

	assign pcsrcD = pc_tp & branchD;

	//execute stage
	flopenrc #(32) r1E(clk,rst,~stallE,flushE,srcaD,srcaE);
	flopenrc #(32) r2E(clk,rst,~stallE,flushE,srcbD,srcbE);
	flopenrc #(32) r3E(clk,rst,~stallE,flushE,signimmD,signimmE);
	flopenrc #(5) r7E(clk,rst,~stallE,flushE,saD,saE);
	flopenrc #(5) r4E(clk,rst,~stallE,flushE,rsD,rsE);
	flopenrc #(5) r5E(clk,rst,~stallE,flushE,rtD,rtE);
	flopenrc #(5) r6E(clk,rst,~stallE,flushE,rdD,rdE);
		// 传�?�使能信�?
	flopenrc #(4) r8E(clk,rst,~stallE,flushE,memwriteD,memwriteE);
	flopenrc #(3) r9E(clk,rst,~stallE,flushE,memopD,memopE);
	flopenrc #(32) r10E(clk,rst,~stallE,flushE,pcplus4D,pcplus4E);
//	flopr #(32) r11E(clk,rst,pcD,pcE);
	flopenrc #(32) r11E(clk,rst,~stallE,flushE,pcD,pcE);

	mux3 #(32) forwardaemux(srcaE,resultW,aluoutM,forwardaE,srca2E);
	mux3 #(32) forwardbemux(srcbE,resultW,aluoutM,forwardbE,srcb2E);
	mux2 #(32) srcbmux(srcb2E,signimmE,alusrcE,srcb3E);
	alu alu(
		.clk(clk), 
		.rst(rst), 
		.a(srca2E),
		.b(srcb3E),
		.op(alucontrolE),
		.sa(saE),
		.hilo_i(hilo_outM),
		.y(aluout),
		.hilo_o(hilo_inE),
		.overflow(),
		.zero(),
		.stall_div(stall_divE));


	mux3 #(5) wrmux(rtE,rdE,5'd31,regdstE,writeregE);

	mux2 #(32) datamux(aluout,(pcplus4E + 3'd4),jbal,aluoutE);

	//mem stage
	flopenrc #(32) r1M(clk,rst,~stallM,flushM,srcb2E,writedataM1);
	flopenrc #(32) r2M(clk,rst,~stallM,flushM,aluoutE,aluoutM);
	flopenrc #(5) r3M(clk,rst,~stallM,flushM,writeregE,writeregM);
	flopenrc #(64) r4M(clk,rst,~stallM,flushM,hilo_inE, hilo_inM);
	flopenrc #(1) r5M(clk,rst,~stallM,flushM,stall_divE,stall_divM);
	flopenrc #(3) r6M(clk,rst,~stallM,flushM,memopE,memopM);
//	flopr #(32) r7M(clk,rst,pcE,pcM);
	flopenrc #(32) r7M(clk,rst,~stallM,flushM,pcE,pcM);

	// MEM阶段，存数据阶段
	always @(*) begin
        case (memopM)
            3'b111:begin
                    temp <= 4'b1111;
                     writedata <= writedataM1;
            end
            3'b110:begin
//                case(aluoutM[1])
//                    1'b0: temp <= 4'b1100;
//                    1'b1: temp <= 4'b0011;
//                    default: temp <= 4'b0000;
//                endcase
//                writedata <= {2{writedataM1[15:0]}};
                case(aluoutM[1])
                    1'b1: temp <= 4'b1100;
                    1'b0: temp <= 4'b0011;
                    default: temp <= 4'b0000;
                endcase
                writedata <= {2{writedataM1[15:0]}};
            end
            3'b101:begin
//                case(aluoutM[1:0])
//                    2'b00: temp <= 4'b1000;
//                    2'b01: temp <= 4'b0100;
//                    2'b10: temp <= 4'b0010;
//                    2'b11: temp <= 4'b0001;
//                    default: temp <= 4'b0000;
//                endcase
//                writedata <= {4{writedataM1[7:0]}};
                case(aluoutM[1:0])
                    2'b11: temp <= 4'b1000;
                    2'b10: temp <= 4'b0100;
                    2'b01: temp <= 4'b0010;
                    2'b00: temp <= 4'b0001;
                    default: temp <= 4'b0000;
                endcase
                writedata <= {4{writedataM1[7:0]}};
            end
            default:begin
                    temp <= 4'b0000;
                    writedata <= 32'd0;
            end
        endcase
	end
	
	assign memwriteM = temp;
	assign writedataM = writedata;
	//把hilo的写放在memory阶段
	hilo_reg hilo(.clk(clk),.rst(rst),.we(hilowriteM&~stall_divM),.hi(hilo_inM[63:32]),.lo(hilo_inM[31:0]),.hi_o(hilo_outM[63:32]),.lo_o(hilo_outM[31:0]));

	//writeback stage
	flopenrc #(32) r1W(clk,rst,~stallW,flushW,aluoutM,aluoutW);
	flopenrc #(32) r2W(clk,rst,~stallW,flushW,readdataM,readdataW);
	flopenrc #(5) r3W(clk,rst,~stallW,flushW,writeregM,writeregW);
	flopenrc #(3) r4W(clk,rst,~stallW,flushW,memopM,memopW);
//	flopr #(32) r5W(clk,rst,pcM,pcW);
	flopenrc #(32) r5W(clk,rst,~stallW,flushW,pcM,pcW);
	
		// 取操作判�?
	always @(*) begin
        case (memopW)
        // LW
        3'b000:begin
            temp2 <= readdataW;
        end
        // LH
        3'b001:begin
//            case (aluoutW[1])
//                1'b0: temp1[15:0] <= readdataW[31:16];
//                1'b1: temp1[15:0] <= readdataW[15:0];
//                default: temp1[15:0] <= 16'b0;
//            endcase
//            temp2 <= {{16{temp1[15]}},temp1[15:0]};
            case (aluoutW[1])
                1'b1: temp1[15:0] <= readdataW[31:16];
                1'b0: temp1[15:0] <= readdataW[15:0];
                default: temp1[15:0] <= 16'b0;
            endcase
            temp2 <= {{16{temp1[15]}},temp1[15:0]};
        end
        // LHU
        3'b010:begin
//            case (aluoutW[1])
//                1'b0: temp1[15:0] <= readdataW[31:16];
//                1'b1: temp1[15:0] <= readdataW[15:0];
//                default: temp1[15:0] <= 16'b0;
//            endcase
//            temp2 <= {16'h0000,temp1[15:0]};
            case (aluoutW[1])
                1'b1: temp1[15:0] <= readdataW[31:16];
                1'b0: temp1[15:0] <= readdataW[15:0];
                default: temp1[15:0] <= 16'b0;
            endcase
            temp2 <= {16'h0000,temp1[15:0]};
        end
        // LB
        3'b011:begin
//            case (aluoutW[1:0])
//                2'b00: temp1[7:0] <= readdataW[31:24];
//                2'b01: temp1[7:0] <= readdataW[23:16];
//                2'b10: temp1[7:0] <= readdataW[15:8];
//                2'b11: temp1[7:0] <= readdataW[7:0];
//                default: temp1[7:0] <= 8'h00;
//            endcase
//            temp2 <= {{24{temp1[7]}},temp1[7:0]};
            case (aluoutW[1:0])
                2'b11: temp1[7:0] <= readdataW[31:24];
                2'b10: temp1[7:0] <= readdataW[23:16];
                2'b01: temp1[7:0] <= readdataW[15:8];
                2'b00: temp1[7:0] <= readdataW[7:0];
                default: temp1[7:0] <= 8'h00;
            endcase
            temp2 <= {{24{temp1[7]}},temp1[7:0]};
        end
        // LBU
        3'b100:begin
//            case (aluoutW[1:0])
//                2'b00: temp1[7:0] <= readdataW[31:24];
//                2'b01: temp1[7:0] <= readdataW[23:16];
//                2'b10: temp1[7:0] <= readdataW[15:8];
//                2'b11: temp1[7:0] <= readdataW[7:0];
//                default: temp1[7:0] <= 8'h00;
//            endcase
//                temp2 <= {24'h000000,temp1[7:0]};
//            end
            case (aluoutW[1:0])
                2'b11: temp1[7:0] <= readdataW[31:24];
                2'b10: temp1[7:0] <= readdataW[23:16];
                2'b01: temp1[7:0] <= readdataW[15:8];
                2'b00: temp1[7:0] <= readdataW[7:0];
                default: temp1[7:0] <= 8'h00;
            endcase
            temp2 <= {24'h000000,temp1[7:0]};
        end
        default:temp2 <= readdataW;
        endcase
	end
	
	assign readdata2W = temp2;

	mux2 #(32) resmux(aluoutW,readdata2W,memtoregW,resultW);
endmodule
