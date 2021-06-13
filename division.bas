const paper=rgb(128,0,128)
dim pi as double
dim x as double
dim y as double
dim xx as double
dim yy as double
dim xx2 as double
dim yy2 as double
dim n as integer
dim nn as double
dim r1 as double
dim centerx as double
dim centery as double
dim r as integer
dim rr as integer
dim rrr as integer
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
pi=3.1415927
print "R?"
input r
print "many?"
input w
print "border?"
input b
screenres 640,480,16
bb=b*2
rr=r*2+bb+1
dim as any ptr image1=imagecreate(rr,rr,paper)

line image1,(0,0)-(rr,rr),0,b
r1=r
centerx=b+r1
centery=b+r1
for n=0 to w
	nn=n
	xx=centerx+(r1)*sin((nn/(w/2))*pi)
	yy=centery-(r1)*cos((nn/(w/2))*pi)
	xx2=centerx+(r1)*sin(((nn+1)/(w/2))*pi)
	yy2=centery-(r1)*cos(((nn+1)/(w/2))*pi)
	line image1,(r+b,r+b)-(int(xx),int(yy)),0
	line image1,(int(xx2),int(yy2))-(int(xx),int(yy)),0
	
next
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"

