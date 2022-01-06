`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/02 17:36:57
// Design Name: 
// Module Name: div
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


module div  (  
    input clk,rst,
    input[31:0] a,   
    input[31:0] b,  
    input start,
    input sign,
    output wire [31:0] quotient,  
    output wire [31:0] remainder,
    output wire done 
    );  
  
    reg[63:0] temp_a;
    reg[63:0] temp_b;
    reg[5:0] i;
    reg done_r;
    reg sign_quotient,sign_remainder;
//------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if(rst) i <= 6'd0;
        else if(start && i < 6'd33) i <= i+1'b1; 
        else i <= 6'd0;
    end
//------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if(rst) done_r <= 1'b0;
        else if(i == 6'd32) done_r <= 1'b1;        
        else done_r <= 1'b0;
    end    
    assign done = done_r;
//------------------------------------------------
    always @ (posedge clk or negedge rst)begin
        if(rst) begin
            temp_a <= 64'h0;
            temp_b <= 64'h0;
        end
        else if(start) begin
            if(i == 6'd0) begin
                if(sign == 1'b1) begin
                    temp_a <= a[31] ? {32'h00000000,~a+1'b1} : {32'h00000000,a};
                    temp_b <= b[31] ? {~b+1'b1,32'h00000000} : {b,32'h00000000}; 
                end
                else begin
                    temp_a <= {32'h00000000,a};
                    temp_b <= {b,32'h00000000};
                end
                sign_quotient = a[31]^b[31];
                sign_remainder = a[31];
            end
            else begin
                temp_a = temp_a << 1;
                if(temp_a >= temp_b) temp_a = temp_a - temp_b + 1'b1;
                else temp_a = temp_a;
            end
         end
    end
     
    assign quotient = sign==1'b1 ? (sign_quotient ? ~(temp_a[31:0])+1'b1 : temp_a[31:0]) : temp_a[31:0];
    assign remainder = sign==1'b1 ? (sign_remainder ? ~(temp_a[63:32])+1'b1 : temp_a[63:32]) : temp_a[63:32];
  
endmodule
