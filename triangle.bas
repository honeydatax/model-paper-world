const paper=rgb(128,0,128)
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer

print "W?"
input w
print "H?"
input h
print "border?"
input b
screenres 640,480,16
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+bbb,h+bbb,paper)
line image1,(0,0)-(w+bb+bb,h+bb+bb),0,b
line image1,(bb,bb)-(w+bb,h+bb),0,b
line image1,(w+bb,h+bb)-(w/2+bb,bb),0
line image1,(bb,h+bb)-(w/2+bb,bb),0
line image1,(w/2+bb,0)-(w/2+bb,h+bb+bb),0
line image1,(w+bb+bb,h+bb)-(w/2+bb+bb,0),0
line image1,(0,h+bb)-(w/2+bb-bb,0),0
line image1,(bb,h+bb)-(w+bb,h+bb+bb),0,b
line image1,(0,h+bb)-(w+bb+bb,h+bb+bb),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
