// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  3 20:49:41 2024
// Host        : Nikhil-V2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/lab7_2/ip_repo/hdmi_text_controller_1_0/src/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1200" *) 
  (* C_READ_DEPTH_B = "1200" *) 
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
  (* C_WRITE_DEPTH_A = "1200" *) 
  (* C_WRITE_DEPTH_B = "1200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 56432)
`pragma protect data_block
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
+zU=
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
