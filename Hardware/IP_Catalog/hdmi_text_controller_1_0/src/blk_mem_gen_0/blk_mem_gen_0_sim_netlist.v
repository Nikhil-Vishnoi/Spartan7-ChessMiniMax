// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  3 19:25:55 2024
// Host        : Nikhil-V2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 56144)
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
