const paper=rgb(128,0,128)
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim m as integer
dim a as integer

print "W?"
input w
print "H?"
input h
print "many?"
input m
print "border?"
input b
screenres 640,480,16
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+bb+1,(h*m)+bb+1,paper)
line image1,(0,0)-(w+bb,(h*m)+bb),0,b
for a= 0 to m-1
	line image1,(b,h*a+b)-(b+w,h*a+h+b),0,b
	line image1,(0,h*a+b)-(bb+w,h*a+b),0
next
line image1,(0,h*a+b)-(bb+w,h*a+b),0
'line image1,(0,(h+bb)\2)-(bb+w,(bb+h)\2),0
'line image1,((w+bb)\2,0)-((w+bb)\2,h+bb),0
'line image1,(b,b)-(w+b,h+b),0
'line image1,(b,h+b)-(w+b,b),0
'line image1,(b,b)-(w+b,h+b),0,b
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
