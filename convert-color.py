from PIL import Image
import os 
import numpy as np

palette = []
def init_palette():
    im = Image.open('fixed-palette.png')
    width, height = im.size
    for x in range(width):
        pair = []
        for y in range(height):
            pair.append(im.getpixel((x,y)))
        palette.append(pair)
        
def close(a, b):
    return (abs(a[0] - b[0]) < 5 and
           abs(a[1] - b[1]) < 5 and
           abs(a[2] - b[2]) < 5)

def parse(filename, origPair, newPair, out):    
    orig1, orig2 = origPair
    new1, new2 = newPair
    img = Image.open(filename).convert('RGBA')
    png_info = img.info
    width, height = img.size
    for x in range(width):
        for y in range(height):
            a = img.getpixel((x,y))
            if close(a,orig1):
                img.putpixel((x,y),new1)
            elif close(a, orig2):
                img.putpixel((x,y),new2)
            elif a[3] == 0:
                img.putpixel((x,y),(0,0,0,0))
            elif close(a, (255,255,255,255)):
                img.putpixel((x,y),(255,255,255,255))            
            elif close(a,(0,0,0,255)):
                img.putpixel((x,y),(0,0,0,255))
            #else:                
            #    img.putpixel((x,y),img.getpixel((x-1,y)))
    img.save(out, **png_info)

for i in range(10):
    try:
        os.mkdir(str(i))
    except:
        pass

init_palette()    

for color in range(9,10):
    for i in range (1, 92):
        name = ("%05d" %i) + ".png"
        foldername = str(color)
        parse(name, palette[0], palette[color], foldername+"/"+name )
    
