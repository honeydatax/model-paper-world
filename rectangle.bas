const paper=5
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
screenres 640,480,4
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+bb+1,h+bb+1,paper)
line image1,(0,0)-(w+bb,h+bb),0,b
line image1,(0,(h+bb)\2)-(bb+w,(bb+h)\2),0
line image1,((w+bb)\2,0)-((w+bb)\2,h+bb),0
line image1,(b,b)-(w+b,h+b),0
line image1,(b,h+b)-(w+b,b),0
line image1,(b,b)-(w+b,h+b),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
