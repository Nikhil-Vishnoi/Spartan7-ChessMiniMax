#ifndef graphics
#define graphics


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"

#define COLUMNS 80
#define ROWS 30
#define PALETTE_START 0x8000

struct TEXT_HDMI_STRUCT {
	uint8_t		      	VRAM [32768*4];
};

void readTest();
void copy (uint8_t * buffer, int x, int y, int width, int height);
void paste (uint8_t * buffer, int x, int y, int width, int height);

static volatile struct TEXT_HDMI_STRUCT* hdmi_ctrl = XPAR_HDMI_TEXT_CONTROLLER_0_AXI_BASEADDR;
static volatile uint8_t* buffer = 0x40020000;
// Fills in the color for two adjacent pixels
void setPixels(int x, int y, uint8_t color);

// Creates chess grid
void createGrid();

// Draws a object ignores any pixel groups defined as 0xff
void drawObject(int x, int y, int width, int height, uint8_t* data, uint8_t color);
void drawObjectMini(int x, int y, int width, int height, uint8_t* data, uint8_t color, int xdivide, int ydivide);

// Switches the frame buffer
void refreshScreen();

void graphicsTest();

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a HDMI_TEXT_CONTROLLER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the HDMI_TEXT_CONTROLLERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void HDMI_TEXT_CONTROLLER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define HDMI_TEXT_CONTROLLER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a HDMI_TEXT_CONTROLLER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the HDMI_TEXT_CONTROLLER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 HDMI_TEXT_CONTROLLER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define HDMI_TEXT_CONTROLLER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))


#endif
