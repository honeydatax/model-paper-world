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
line image1,(0,0)-(w+bbb,h+bbb),0,b
line image1,(0,(h+bbb)\2)-(bbb+w,(bbb+h)\2),0
line image1,((w+bbb)\2,0)-((bbb+w)\2,h+bbb),0
line image1,(bbb,bbb)-(w,h),0
line image1,(bbb,h)-(w,bbb),0
line image1,(0,0)-(w+bbb,h+bbb),0,b
line image1,(0,0)-(w+bbb,h+bbb),0,b
line image1,(0,0)-(w+bbb,h+bbb),0,b
line image1,(bb,bb)-(w+bb,h+bb),0,b
line image1,(bbb,bbb)-(w,h),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
