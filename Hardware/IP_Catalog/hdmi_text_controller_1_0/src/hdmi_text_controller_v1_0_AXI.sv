`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE-Illinois
// Engineer: Zuofu Cheng
// 
// Create Date: 06/08/2023 12:21:05 PM
// Design Name: 
// Module Name: hdmi_text_controller_v1_0_AXI
// Project Name: ECE 385 - hdmi_text_controller
// Target Devices: 
// Tool Versions: 
// Description: 
// This is a modified version of the Vivado template for an AXI4-Lite peripheral,
// rewritten into SystemVerilog for use with ECE 385.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 - File modified to be more consistent with generated template
// Revision 11/18 - Made comments less confusing
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0_AXI #
(

    // Parameters of Axi Slave Bus Interface S_AXI
    // Modify parameters as necessary for access of full VRAM range

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH	= 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH	= 32
)
(
    input logic [13:0] index, // Index into BRAM for color mapper 
    input logic [2:0] pixindex,
    output logic [15:0] pixeldata, 
    input logic refresh, 
    output logic led, 
    // Global Clock Signal
    input logic  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input logic  S_AXI_ARESETN,
    // Write address (issued by master, acceped by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
    input logic [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
    input logic  S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
    output logic  S_AXI_AWREADY,
    // Write data (issued by master, acceped by Slave) 
    input logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.    
    input logic [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
        // data and strobes are available.
    input logic  S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
        // can accept the write data.
    output logic  S_AXI_WREADY,
    // Write response. This signal indicates the status
        // of the write transaction.
    output logic [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
    output logic  S_AXI_BVALID,
    // Response ready. This signal indicates that the master
        // can accept a write response.
    input logic  S_AXI_BREADY,
    // Read address (issued by master, acceped by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
    input logic [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
    input logic  S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
    output logic  S_AXI_ARREADY,
    // Read data (issued by slave)
    output logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
        // read transfer.
    output logic [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
        // signaling the required read data.
    output logic  S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
        // accept the read data and response information.
    input logic  S_AXI_RREADY
);

/***  AXI LOGIC ***/ 

// AXI4LITE signals
logic  [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
logic  axi_awready;
logic  axi_wready;
logic  [1 : 0] 	axi_bresp;
logic  axi_bvalid;
logic  [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
logic  axi_arready;
logic  [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
logic  [1 : 0] 	axi_rresp;
logic  	axi_rvalid;

// Example-specific design signals
// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
// ADDR_LSB is used for addressing 32/64 bit registers/memories
// ADDR_LSB = 2 for 32 bits (n downto 2)
// ADDR_LSB = 3 for 64 bits (n downto 3)
localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
localparam integer OPT_MEM_ADDR_BITS = 16;
logic [15:0] color_pallet[16]; 
//logic frame_filter; // Switches between drawing two frames 
always_comb begin 
    led = refresh; 
end 
//always_ff @ (posedge S_AXI_ACLK) begin 
//    if ( S_AXI_ARESETN == 1'b1 ) begin 
//        frame_filter <= 1'b0; 
//    end 
//    else  
//    begin 
//      if (slv_reg_wren && axi_awaddr[16] == 1'b1 ) begin 
//        frame_filter  <= ~frame_filter; 
//      end
//    end 
//end 
always_comb begin 
    color_pallet[0] = 16'h0111; // Light Gray  
    color_pallet[1] = 16'h0fff; // White 
    color_pallet[2] = 16'h03ba; // Soft Teel 
    color_pallet[3] = 16'h000f; // Green 
    color_pallet[4] = 16'h0334; // Idk what this gives 
    color_pallet[5] = 16'h0555; // Gray 
    color_pallet[6] = 16'h0000; // Black 
    color_pallet[7] = 16'h0ddd; // Light Gray 
    color_pallet[8] = 16'h0a5c; // Deep Purple 
    color_pallet[9] = 16'h0f23; 
    color_pallet[10] = 16'h0234; // Dark purple
    color_pallet[11] = 16'h0456; 
    color_pallet[12] = 16'h0789; 
    color_pallet[13] = 16'h0125; 
    color_pallet[14] = 16'h0111; 
    color_pallet[15] = 16'h0222; 
end 
logic	 slv_reg_rden;
logic	 slv_reg_wren;
logic [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
integer	 byte_index;
logic	 aw_en;

// I/O Connections assignments

assign S_AXI_AWREADY	= axi_awready;
assign S_AXI_WREADY	= axi_wready;
assign S_AXI_BRESP	= axi_bresp;
assign S_AXI_BVALID	= axi_bvalid;
assign S_AXI_ARREADY = axi_arready;
assign S_AXI_RDATA	= axi_rdata;
assign S_AXI_RRESP	= axi_rresp;
assign S_AXI_RVALID	= axi_rvalid;
// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awready <= 1'b0;
      aw_en <= 1'b1;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
        begin
          // slave is ready to accept write address when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_awready <= 1'b1;
          aw_en <= 1'b0;
        end
        else if (S_AXI_BREADY && axi_bvalid)
            begin
              aw_en <= 1'b1;
              axi_awready <= 1'b0;
            end
      else           
        begin
          axi_awready <= 1'b0;
        end
    end 
end       

// Implement axi_awaddr latching
// This process is used to latch the address when both 
// S_AXI_AWVALID and S_AXI_WVALID are valid. 

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awaddr <= 0;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
        begin
          // Write Address latching 
          axi_awaddr <= S_AXI_AWADDR;
        end
    end 
end       

// Implement axi_wready generation
// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
// de-asserted when reset is low. 

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_wready <= 1'b0;
    end 
  else
    begin    
      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
        begin
          // slave is ready to accept write data when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_wready <= 1'b1;
        end
      else
        begin
          axi_wready <= 1'b0;
        end
    end 
end       

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;  


// Implement write response logic generation
// The write response and response valid signals are asserted by the slave 
// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_bvalid  <= 0;
      axi_bresp   <= 2'b0;
    end 
  else
    begin    
      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
        begin
          // indicates a valid write response is available
          axi_bvalid <= 1'b1;
          axi_bresp  <= 2'b0; // 'OKAY' response 
        end                   // work error responses in future
      else
        begin
          if (S_AXI_BREADY && axi_bvalid) 
            //check if bready is asserted while bvalid is high) 
            //(there is a possibility that bready is always asserted high)   
            begin
              axi_bvalid <= 1'b0; 
            end  
        end
    end
end   

// Implement axi_arready generation
// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. axi_awready is 
// de-asserted when reset (active low) is asserted. 
// The read address is also latched when S_AXI_ARVALID is 
// asserted. axi_araddr is reset to zero on reset assertion.

logic axi_arready_1; 
logic [1:0] onlyhappenonceacylce; 


always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_arready <= 1'b0;
      axi_arready_1 <= 1'b0; 
      axi_araddr  <= 32'b0;
      onlyhappenonceacylce <= 2'b10; 
    end 
  else
    begin    
      if (~axi_arready_1 && S_AXI_ARVALID && (onlyhappenonceacylce == 2'b10) )
        begin
          // indicates that the slave has acceped the valid read address
          axi_arready_1 <= 1'b1;
          // Read address latching
          axi_araddr  <= S_AXI_ARADDR;
          onlyhappenonceacylce <= 1'b0; 
        end
      else
        begin
          axi_arready_1 <= 1'b0; // Need to add another stall state thats after this guy 
          onlyhappenonceacylce <= onlyhappenonceacylce + 1'b1; 
        end
      axi_arready <= axi_arready_1; 
      
    end 
end       


// Implement axi_arvalid generation
// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset (active low). axi_rresp and axi_rdata are 
// cleared to zero on reset (active low).  

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rvalid <= 0;
      axi_rresp  <= 0;
    end 
  else
    begin    
      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
        begin
          // Try toggling this seignal instead 
          // Valid read data is available at the read data bus
          axi_rvalid <= 1'b1;
          axi_rresp <= 2'b0; // 'OKAY' response
        end   
      else if (axi_rvalid && S_AXI_RREADY)
        begin
          // Read data is accepted by the master
          axi_rvalid <= 1'b0;
        end     
        
    end 
end    

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;


always_comb
begin
       reg_data_out = axi_read_data_sram;
end

// Output register or memory read data
always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rdata  <= 0;
    end 
  else
    begin    
      // When there is a valid read address (S_AXI_ARVALID) with 
      // acceptance of read address by the slave (axi_arready), 
      // output the read dada 
      if (slv_reg_rden)
        begin
          axi_rdata <= reg_data_out;    
        end   
    end
end    
// Add user logic here

/*** gRAPHICS LOGIC  ***/ 
logic [3:0] wea; // This is going to be the write strobe when writing with AXI protocol 
logic [31:0] axi_read_data_sram; // Data read for the AXI protocol 
logic [31:0] axi_write_data_sram; // Data to write for the AXI protocol 
logic [15:0] addra; // This is going to be mapped to what we are trying to read and write to in the AXI protocol     logic [3:0] wea; // This is going to be the write strobe when writing with AXI protocol 
logic [31:0] axi_read_data_sram; // Data read for the AXI protocol 
logic [31:0] axi_write_data_sram; // Data to write for the AXI protocol 
logic [14:0] addra; // This is going to be mapped to what we are trying to read and write to in the AXI protocol 
// Implement Color mapper to decide rgb based off the control register data and 
// the drawX and drawY 

// Pixel Decoding 
logic [31:0] word; 
always_comb begin 

    case (pixindex) 
        0: begin 
            pixeldata[15:0] = color_pallet[word[3:0]]; 
        end 
        1: begin 
            pixeldata[15:0] = color_pallet[word[7:4]]; 
        end 
        2: begin 
            pixeldata[15:0] = color_pallet[word[11:8]]; 
        end 
        3: begin 
            pixeldata[15:0] = color_pallet[word[15:12]]; 
        end 
        4: begin 
            pixeldata[15:0] = color_pallet[word[19:16]]; 
        end 
        5: begin 
            pixeldata[15:0] = color_pallet[word[23:20]]; 
        end 
        6: begin 
            pixeldata[15:0] = color_pallet[word[27:24]]; 
        end 
        7: begin 
            pixeldata[15:0] = color_pallet[word[31:28]]; 
        end 
        default: begin 
            pixeldata[15:0] = 0; 
        end 

        
    endcase 
    
end 

// BRAM Memory Unit 
//    clka : IN STD_LOGIC;
//    rsta : IN STD_LOGIC;
//    ena : IN STD_LOGIC;
//    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
//    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
//    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
//    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
//    clkb : IN STD_LOGIC;
//    rstb : IN STD_LOGIC;
//    enb : IN STD_LOGIC;
//    web : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
//    addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
//    dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
//    doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
//    rsta_busy : OUT STD_LOGIC;
//    rstb_busy : OUT STD_LOGIC

// sram important internal signals 
    logic [14:0] rendering_index; 
    logic [31:0] dina; 
    logic ena; 
    logic [3:0] wstrb; 
    always_comb begin 
        if (slv_reg_wren) begin
            addra[13:0] =  axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS-2:ADDR_LSB];
            addra[14]   = refresh; 
            dina  =  S_AXI_WDATA; 
            ena = 1'b1; 
            wstrb = S_AXI_WSTRB; 
        end else if (axi_arready_1) begin 
            addra[13:0] =  axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS-2:ADDR_LSB]; 
            addra[14]   = refresh; 
            dina = 0; 
            ena = 1'b1; 
            wstrb = 4'b0000; 
        end else begin 
            addra = 0; 
            ena = 1'b0; 
            dina = 0; 
            wstrb = 4'b0000; 
        end 
        rendering_index[13:0] = index; 
        // Render the buffer that I am not reading or writing to 
        rendering_index[14] = ~refresh; 
    end 
    blk_mem_gen_0 sram0 (
        // AXI Channel used for writing 
        .addra	( addra ),
        .clka	( S_AXI_ACLK ),
        .dina	( dina ),
        .ena	( ena ), // slv_reg_wren | slv_reg_rden), // Only enable if writing or reading 
        .wea	( wstrb ), // 
        .douta	( axi_read_data_sram ),
        .addrb  ( rendering_index ),
        .clkb	( S_AXI_ACLK ),
        .dinb	( 32'b0 ),
        .enb	( 1'b1 ), // Always be enabled 
        .web	( 4'b0000 ), // Color mapper only ever needs to read
        .doutb	( word ) // The output for us is the word  
    );

endmodule

