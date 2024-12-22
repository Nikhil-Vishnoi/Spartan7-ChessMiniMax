//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Dec 12 12:57:07 2024
//Host        : nikhil running 64-bit major release  (build 9200)
//Command     : generate_target mbblock_i_wrapper.bd
//Design      : mbblock_i_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mbblock_i_wrapper
   (HDMI_0_tmds_clk_n,
    HDMI_0_tmds_clk_p,
    HDMI_0_tmds_data_n,
    HDMI_0_tmds_data_p,
    clk_100MHz,
    debug,
    gpio_io_i_0,
    gpio_io_i_1,
    gpio_io_i_2,
    gpio_io_i_3,
    gpio_usb_int_tri_i,
    gpio_usb_rst_tri_o,
    reset_rtl_0,
    spi_rtl_0_io0_i,
    spi_rtl_0_io0_t,
    spi_rtl_0_io1_o,
    spi_rtl_0_io1_t,
    spi_rtl_0_sck_i,
    spi_rtl_0_sck_t,
    spi_rtl_0_ss_i,
    spi_rtl_0_ss_t,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    usb_spi_miso,
    usb_spi_mosi,
    usb_spi_sclk,
    usb_spi_ss);
  output HDMI_0_tmds_clk_n;
  output HDMI_0_tmds_clk_p;
  output [2:0]HDMI_0_tmds_data_n;
  output [2:0]HDMI_0_tmds_data_p;
  input clk_100MHz;
  output debug;
  input [0:0]gpio_io_i_0;
  input [0:0]gpio_io_i_1;
  input [0:0]gpio_io_i_2;
  input [0:0]gpio_io_i_3;
  input [0:0]gpio_usb_int_tri_i;
  output [0:0]gpio_usb_rst_tri_o;
  input reset_rtl_0;
  input spi_rtl_0_io0_i;
  output spi_rtl_0_io0_t;
  output spi_rtl_0_io1_o;
  output spi_rtl_0_io1_t;
  input spi_rtl_0_sck_i;
  output spi_rtl_0_sck_t;
  input [0:0]spi_rtl_0_ss_i;
  output spi_rtl_0_ss_t;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  input usb_spi_miso;
  output usb_spi_mosi;
  output usb_spi_sclk;
  output [0:0]usb_spi_ss;

  wire HDMI_0_tmds_clk_n;
  wire HDMI_0_tmds_clk_p;
  wire [2:0]HDMI_0_tmds_data_n;
  wire [2:0]HDMI_0_tmds_data_p;
  wire clk_100MHz;
  wire debug;
  wire [0:0]gpio_io_i_0;
  wire [0:0]gpio_io_i_1;
  wire [0:0]gpio_io_i_2;
  wire [0:0]gpio_io_i_3;
  wire [0:0]gpio_usb_int_tri_i;
  wire [0:0]gpio_usb_rst_tri_o;
  wire reset_rtl_0;
  wire spi_rtl_0_io0_i;
  wire spi_rtl_0_io0_t;
  wire spi_rtl_0_io1_o;
  wire spi_rtl_0_io1_t;
  wire spi_rtl_0_sck_i;
  wire spi_rtl_0_sck_t;
  wire [0:0]spi_rtl_0_ss_i;
  wire spi_rtl_0_ss_t;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire usb_spi_miso;
  wire usb_spi_mosi;
  wire usb_spi_sclk;
  wire [0:0]usb_spi_ss;

  mbblock_i mbblock_i_i
       (.HDMI_0_tmds_clk_n(HDMI_0_tmds_clk_n),
        .HDMI_0_tmds_clk_p(HDMI_0_tmds_clk_p),
        .HDMI_0_tmds_data_n(HDMI_0_tmds_data_n),
        .HDMI_0_tmds_data_p(HDMI_0_tmds_data_p),
        .clk_100MHz(clk_100MHz),
        .debug(debug),
        .gpio_io_i_0(gpio_io_i_0),
        .gpio_io_i_1(gpio_io_i_1),
        .gpio_io_i_2(gpio_io_i_2),
        .gpio_io_i_3(gpio_io_i_3),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(reset_rtl_0),
        .spi_rtl_0_io0_i(spi_rtl_0_io0_i),
        .spi_rtl_0_io0_t(spi_rtl_0_io0_t),
        .spi_rtl_0_io1_o(spi_rtl_0_io1_o),
        .spi_rtl_0_io1_t(spi_rtl_0_io1_t),
        .spi_rtl_0_sck_i(spi_rtl_0_sck_i),
        .spi_rtl_0_sck_t(spi_rtl_0_sck_t),
        .spi_rtl_0_ss_i(spi_rtl_0_ss_i),
        .spi_rtl_0_ss_t(spi_rtl_0_ss_t),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss));
endmodule
