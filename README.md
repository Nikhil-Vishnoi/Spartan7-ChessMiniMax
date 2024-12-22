# Spartan7-ChessMiniMax

This project is built ontop of a Spartan 7 FPGA (https://realdigital.org/hardware/urbana) for my ECE 385 Final Project. 

Provided Code:

The graphics are built ontop of a provided hdmi_tx_1.0 module provided to use by our course. The USB reading lw_usb C code is also provided by our course the only files I touched in that one is the MAX3241E.c file after understanding how to utilize xspi.h 

Hardware Block Design: 

This project is based ontop of a 128Kb Microblaze from Xlinix. Connected to the Microblaze are a bunch of GPIO blocks for io connections between switches and the C software. A XPSI ip block and XPSI timer block from Xlinix is also included to connect the SPI signals (MOSI,MISO,SS, SCLK) to the C code so that xspi.h is capable to send and recieve bytes from my mouse. Lastly a graphics ip block called hdmi_text_controller connects the fpga to the HDMI out port using the provided hdmi_tx_1.0 module. 

Graphics: 

Graphics driver were done using a AXI based ip module with 32768 bits of BRAM. The graphics driver implements a frame buffer using the MSB. Both frames have a fixed size of 14400 bits. Data is stored in row major order in the size of (x=480, y = 240). Each coord is stored in 4 bit representing a index into a fixed color pallete. For simplicitly sakes I ended up cutting down my resolution to x=240 y = 240 by writing 2 pixels at a time but this graphics driver can get a increased resolution if the C code does more work to write into it in groups of 4 bits instead of bytes. 

To draw interesting objects with the graphics driver image processing was done using Pythons Pillow Image package which enabled me to take images of pieces, cast them into a black and white image and create a bit map representing where a color should be drawn to create a monocolor image. 

Chess: 

The chess game was designed purely in C using stack programming to avoid any memory leaks and I did not run out of space. The game is mostly logic and inside the board.c file. Only notable mention is that I did not end up creating a 3 turn repeat draw or a insufficient material draw. This could be done easily using the helper functions I made in board.c but I ran out of stack space to fit the program text inside the fpga board. To fix this I would have neeeded to rewrite and compact my code which is very possible but I did not have the time. 

MiniMax: 

The Minimax algorithm uses the board.c helper functions to create a moveTree with a variable depth ( I fixed the depth to 3 when I used it because it was too slow ). I did not create my own hueristic for the board evaluation heuristic instead I opted to using this heuristic. https://github.com/aiden200/chess_ai/blob/main/chess_engine/piece_values.py. Additionally to increase speed I added alpha beta pruning. 




