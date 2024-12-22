from PIL import Image
import numpy as np 
import os 
print(os.listdir("Pieces/"))
f = open('dump.txt','w')

# Open the image
for image in os.listdir("Pieces/"): 
    img = Image.open(("Pieces/"+image))
    print("-----------------------------------------------\n") 
    print("Running on ",image) 
    f.write((image)) 
    f.write("\n") 



    img = img.convert('1') # convert image to black and white
    # img.show()
    img = img.resize((60,120))
    img.show()


    pixel_values = list(img.getdata())
    pixel_values = np.reshape(pixel_values, (-1, 60))

    print(len(pixel_values[0]))
    print(len(pixel_values[:,0]))
    print(pixel_values)
    i = 0 
    print("\n\n\n")
    for row in pixel_values: 
        
        if (i % 2 == 0): 
            for c in row: 
                if c == 0: 
                    f.write("*")
                else:
                    f.write(" ")
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
            f.write("\n")
        i = i + 1 
    i = 0 
    f.write("\n-----------------------------------------------\n") 
f.close()
