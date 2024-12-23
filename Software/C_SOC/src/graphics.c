#include "graphics.h"
/*
 * Contains the graphics controlling information and enables smooth control
 * Can draw given arrays with a known x y dimension
 */
void setPixels(int x, int y, uint8_t color) {
	if ( y < 240 && x < 480 )
		hdmi_ctrl->VRAM[(x/2+y*240)] = color;
}


void createGrid() {
	// Draw the Chess Board
	for (int x = 0; x < 480; x++)
		for (int y = 0; y < 240; y++)
			if ( (((x/60)%2 == 1) && ((y/30)%2 == 0)) || (((x/60)%2 == 0) && ((y/30)%2 == 1)) )
				setPixels(x,y,0xaa);
			else if ( (((x/60)%2 == 1) && ((y/30)%2 == 1)) || (((x/60)%2 == 0) && ((y/30)%2 == 0)) )
				setPixels(x,y,0x55);
}
void copy (uint8_t * buffer, int x, int y, int width, int height) {
	for (int yp = y; yp < y + height; yp++) {
		for (int xp = x; xp< x+ width; xp+=2) {
			buffer[(xp-x)/2+(yp-y)*height] = hdmi_ctrl->VRAM[(xp/2+yp*240)];

		}
	}
}
void paste (uint8_t * buffer, int x, int y, int width, int height) {
	for (int yp = y; yp < y + height; yp++) {
		for (int xp = x; xp< x+ width; xp+=2) {
			hdmi_ctrl->VRAM[(xp/2+yp*240)] = buffer[(xp-x)/2+(yp-y)*height];

		}
	}
}
void drawObject(int x, int y, int width, int height, uint8_t* data, uint8_t color) {
	for (int xp = x; xp < x + width; xp+=2) {
		for (int yp = y; yp < y + height; yp++) {
			if( (data[(xp-x)/2+(yp-y)*height] == 0x11) ||
				(data[(xp-x)/2+(yp-y)*height] == 0x01) ||
				(data[(xp-x)/2+(yp-y)*height] == 0x10)	)
			{
				setPixels(xp,yp,color);
			}
				//else if (data[(xp-x)/2+(yp-y)*height] == 0x01){
//				uint8_t c1 = hdmi_ctrl->VRAM[(xp/2+yp*240)];
//				print(c1);
//				setPixels(xp,yp,(0x0f & color + 0xf0 & c1));
//			}else if (data[(xp-x)/2+(yp-y)*height] == 0x10)
//			{
//				uint8_t c1 = hdmi_ctrl->VRAM[(xp/2+yp*240)];
//				setPixels(xp,yp,(0xf0 & color + 0x0f & c1));
//			}
		}
	}
}
void drawObjectMini(int x, int y, int width, int height, uint8_t* data, uint8_t color, int xdivide, int ydivide) {

	for (int xp = x; xp < x + width; xp+=2*xdivide) {
		for (int yp = y; yp < y + height-2; yp+=ydivide) {
			if( (data[(xp-x)/2+(yp-y)*height] == 0x11) ||
				(data[(xp-x)/2+(yp-y)*height] == 0x01) ||
				(data[(xp-x)/2+(yp-y)*height] == 0x10)	)
			{
				setPixels(x/2+(xp/xdivide),y/2+(yp/ydivide),color);
			}
		}
	}
}
void refreshScreen() {
	*buffer = 0xffffffff ^ *buffer;
}

void graphicsTest() {
	// Should show a fully white screen for ten seconds
	for (int x = 0; x < 1000; x++) {//480*240/4; x++) {
		hdmi_ctrl->VRAM[x] = 0x11;
	}
	refreshScreen();
	sleep_MB (10);
	for (int x = 0; x < 480*240/4; x++) {
		hdmi_ctrl->VRAM[x] = 0x11;
	}
	for (int x = 220; x < 480; x++) {
		for (int y = 20; y < 40; y++) {
			setPixels(x,y,0x22);
		}
		refreshScreen();
		for (int y = 20; y < 40; y++) {
			setPixels(x,y,0x22);
		}
		refreshScreen();
  		if(x%20 ==0)
  			sleep_MB (1);
	  	}
	refreshScreen();
	sleep_MB (10);

}

void readTest() {
	for (int x = 0; x < 32768*4; x++) {
		hdmi_ctrl -> VRAM[x] = x%255;
		if(hdmi_ctrl -> VRAM[x] != x%255) {
			xil_printf("MISMATCH AT x = %d\n Expected 0x%02X got back 0x%02X \n",x%255, x%255, hdmi_ctrl->VRAM[x]);
			while(1) {}
		}
	}
	refreshScreen();
}
