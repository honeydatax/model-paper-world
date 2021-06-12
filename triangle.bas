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
dim as any ptr image1=imagecreate(w+bb,h+bb,paper)
line image1,(0,0)-(w+bb,h+bb),0,b
line image1,(bb,bb)-(w,h),0,b
line image1,(w,h)-(w/2+b,bb),0
line image1,(bb,h)-(w/2+b,bb),0
line image1,(w/2+b,0)-(w/2+b,h+bb),0
line image1,(w+bb,h)-(w/2+bb,0),0
line image1,(0,h)-(w/2,0),0
line image1,(bb,h)-(w,h+bb),0,b
line image1,(0,h)-(w+bb,h+bb),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
