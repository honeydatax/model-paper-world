const paper=rgb(128,0,128)
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim n as integer
dim s as string

print "text?"
input s
print "W?"
input w
print "H?"
input h
print "border?"
input b
screenres 640,480,16
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+1,h+1,paper)
color ,0
line image1,(0,0)-(w,h),0,b
draw string image1,(b,b),s,0


bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
