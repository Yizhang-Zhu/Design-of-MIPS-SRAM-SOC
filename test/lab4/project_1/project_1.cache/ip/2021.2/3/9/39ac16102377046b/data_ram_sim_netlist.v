// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan  7 01:48:09 2022
// Host        : Derrick running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33120)
`pragma protect data_block
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
aor3
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
