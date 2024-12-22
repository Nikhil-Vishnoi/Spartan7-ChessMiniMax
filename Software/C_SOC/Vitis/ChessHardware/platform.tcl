# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Chess\Vitis\ChessHardware\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Chess\Vitis\ChessHardware\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ChessHardware}\
-hw {C:\Chess\ChessSpartan7\ChessHardware.xsa}\
-out {C:/Chess/Vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {ChessHardware}
platform generate -quick
platform generate
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains standalone_microblaze_0 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform generate -domains standalone_microblaze_0 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
platform generate -domains standalone_microblaze_0 
platform active {ChessHardware}
platform config -updatehw {C:/Chess/ChessSpartan7/ChessHardware.xsa}
platform generate -domains 
