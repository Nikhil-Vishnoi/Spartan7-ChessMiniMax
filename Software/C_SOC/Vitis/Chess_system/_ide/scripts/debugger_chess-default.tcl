# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Chess\Vitis\Chess_system\_ide\scripts\debugger_chess-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Chess\Vitis\Chess_system\_ide\scripts\debugger_chess-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "RealDigital Boo 887100000002A" && level==0 && jtag_device_ctx=="jsn1-0362f093-0"}
fpga -file C:/Chess/Vitis/Chess/_ide/bitstream/ChessHardware.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Chess/Vitis/ChessHardware/export/ChessHardware/hw/ChessHardware.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Chess/Vitis/Chess/Debug/Chess.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
