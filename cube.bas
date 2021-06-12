const paper=rgb(128,0,128)
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim m as integer
dim mm as integer
dim a as integer

print "W?"
input w
print "H?"
input h
m=4
mm=4
print "border?"
input b
screenres 640,480,16
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w*mm+bb+1,(h*m)+bb+1,paper)
line image1,(0,0)-(w*mm+bb,(h*m)+bb),0,b
for a= 0 to m-1
	line image1,(b,h*a+b)-(b+w*mm,h*a+h+b),0,b
	line image1,(0,h*a+b)-(bb+w*mm,h*a+b),0
next
	line image1,(0,h*a+b)-(bb+w*mm*m,h*a+b),0
for a= 0 to mm-1
	line image1,(w*a+b,b)-(w*a+b,b+h*m),0,b
	line image1,(w*a+b,0)-(w*a+b,bb+h*m),0,b
next
	line image1,(w*a+b,0)-(w*a+b,bb+h*m),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
