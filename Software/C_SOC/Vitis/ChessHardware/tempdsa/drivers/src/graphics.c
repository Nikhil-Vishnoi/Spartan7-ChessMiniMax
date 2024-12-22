#include "graphics.h"
/*
 * Contains the graphics controlling information and enables smooth control
 * Can draw given arrays with a known x y dimension
 */
void setPixels(int x, int y, uint8_t color) {
	 hdmi_ctrl->VRAM[(x+y*120)] = color;
}


void createGrid() {
	// Draw the Chess Board
	for (int x = 0; x < 240; x++)
		for (int y = 0; y < 240; y++)
			if ( (((x/60)%2 == 1) && ((y/60)%2 == 0)) || (((x/60)%2 == 0) && ((y/60)%2 == 1)) )
				setPixels(x,y,0x55);
			else if ( (((x/60)%2 == 1) && ((y/60)%2 == 1)) || (((x/60)%2 == 0) && ((y/60)%2 == 0)) )
				setPixels(x,y,0x33);
}

void drawObject(int x, int y, int width, int height, uint8_t* data) {
	for (int xp = x; xp < x + width; xp+=2) {
		for (int yp = y; yp < y + height; yp++) {
			if (data[(xp-x)/2+(yp-y)*height] == 0xff) {
				// Transparent Pixel
			}else
				setPixels(xp,yp,data[(xp-x)/2+(yp-y)*height]);
		}
	}
}

void refreshScreen() {
	hdmi_ctrl->VRAM[65536*4] = 1;
}

