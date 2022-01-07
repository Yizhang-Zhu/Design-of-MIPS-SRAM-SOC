// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan  7 01:48:08 2022
// Host        : Derrick running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/admin/Desktop/afterSRAM/board/test/lab4/rtl/xilinx_ip/inst_ram/inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module inst_ram
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_ram.mem" *) 
  (* C_INIT_FILE_NAME = "inst_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  inst_ram_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33152)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
