// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan  7 01:48:09 2022
// Host        : Derrick running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/admin/Desktop/afterSRAM/board/test/lab4/rtl/xilinx_ip/data_ram/data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module data_ram
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
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  data_ram_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33040)
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
