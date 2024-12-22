
from PIL import Image
import numpy as np 

# Open the image
img = Image.open("Images/mouse.png")




img = img.convert('1') # convert image to black and white
img.show()
img = img.resize((20,40))
img.show()


pixel_values = list(img.getdata())
pixel_values = np.reshape(pixel_values, (-1, 20))

print(len(pixel_values[0]))
print(len(pixel_values[:,0]))
print(pixel_values)
i = 0 
print("\n\n\n")
for row in pixel_values: 
    
    if (i % 2 == 0): 
        # print(row)
        c = 0 
        while c + 1 < len(row): 
            if (row[c] == 0 and row[c+1] == 0): 
                print("0x11,",end="") 
            elif (row[c] == 0 and row[c+1] == 255): 
                print("0x10,",end="")
            elif (row[c] == 255 and row[c+1] == 0): 
                print("0x01,",end="")
            else: 
                print("0xff,",end="")
            c = c + 2    
    i = i + 1 
i = 0 
exit()
print("\n\n\n")
while i < len(pixel_values[0]): 
    c = 0 
    while c < len(pixel_values[:,0]): 
        pixel_value = pixel_values[c,i]
        if(pixel_value == 0): 
            print("0x11,",end=" "); 
        else:
            print("0xff, ",end=" "); 
        c = c + 1
    i = i + 2
i = 0
print()

while i < len(pixel_values[0]): 
    c = 0 
    while c < len(pixel_values[:,0]): 
        pixel_value = pixel_values[c,i]
        if(pixel_value == 0): 
            print("*",end=""); 
        else:
            print(" ",end=""); 
        c = c + 1
    print("\n")
    i = i + 2
