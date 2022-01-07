// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan  7 01:48:08 2022
// Host        : Derrick running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33232)
`pragma protect data_block
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
kA==
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
