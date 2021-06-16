const paper=5
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim n as integer

print "W?"
input w
print "H?"
input h
print "border?"
input b
screenres 640,480,4
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+1,h+1,paper)
line image1,(0,0)-(w,h),0,b
for n=0 to w step b
	line image1,(n,0)-(n+b,h-1),0,b
next 
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
