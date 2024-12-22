-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_10 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/1f7b/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_microblaze_0_0/sim/mbblock_i_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_12 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_dlmb_v10_0/sim/mbblock_i_dlmb_v10_0.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_ilmb_v10_0/sim/mbblock_i_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_21 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_dlmb_bram_if_cntlr_0/sim/mbblock_i_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_ilmb_bram_if_cntlr_0/sim/mbblock_i_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_lmb_bram_0/sim/mbblock_i_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_xbar_0/sim/mbblock_i_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_17 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_microblaze_0_axi_intc_0/sim/mbblock_i_microblaze_0_axi_intc_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_microblaze_0_xlconcat_0/sim/mbblock_i_microblaze_0_xlconcat_0.v" \
-endlib
-makelib xcelium_lib/mdm_v3_2_23 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_mdm_1_0/sim/mbblock_i_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_clk_wiz_1_0/mbblock_i_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_clk_wiz_1_0/mbblock_i_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_rst_clk_wiz_1_100M_0/sim/mbblock_i_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_31 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/67a1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_uartlite_0_0/sim/mbblock_i_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_29 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_0/sim/mbblock_i_axi_gpio_0_0.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_1/sim/mbblock_i_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_26 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/75b9/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_quad_spi_0_0/sim/mbblock_i_axi_quad_spi_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_29 \
  "../../../../ChessSpartan7.gen/sources_1/bd/mbblock_i/ipshared/22b2/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_timer_0_0/sim/mbblock_i_axi_timer_0_0.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_2/sim/mbblock_i_axi_gpio_0_2.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_3/sim/mbblock_i_axi_gpio_0_3.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_4/sim/mbblock_i_axi_gpio_0_4.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_5/sim/mbblock_i_axi_gpio_0_5.vhd" \
  "../../../bd/mbblock_i/ip/mbblock_i_axi_gpio_0_6/sim/mbblock_i_axi_gpio_0_6.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/blk_mem_gen_0_1/sim/blk_mem_gen_0.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/hdmi_tx_0_1/hdl/encode.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/hdmi_tx_0_1/hdl/serdes_10_to_1.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/hdmi_tx_0_1/hdl/srldelay.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/hdmi_tx_0_1/hdl/hdmi_tx_v1_0.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/hdmi_tx_0_1/sim/hdmi_tx_0.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/clk_wiz_0_1/clk_wiz_0_clk_wiz.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/src/clk_wiz_0_1/clk_wiz_0.v" \
  "../../../bd/mbblock_i/ip/mbblock_i_hdmi_text_controller_0_0/sim/mbblock_i_hdmi_text_controller_0_0.v" \
  "../../../bd/mbblock_i/sim/mbblock_i.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

