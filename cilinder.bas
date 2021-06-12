const paper=rgb(128,0,128)
const pi=3.1415927
dim w as integer
dim h as integer
dim hh as double
dim b as integer
dim bb as integer
dim bbb as integer
dim d as double
dim t as double
dim a as integer

print "W?"
input w
print "diameter?"
input t
hh=t
d=hh*pi
h=int(d)
print "border?"
input b
screenres 640,480,16
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(w+bb+1,h+b+1,paper)
line image1,(0,0)-(w+bb,h+b),0,b
line image1,(b,b)-(w+b,h+bb),0,b
t=d\32
d=0+b
for a=0 to h step 8
	line image1,(0,a+b)-(w+bb,a+b),0,b
next 
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
