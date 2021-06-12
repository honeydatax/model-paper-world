const paper=rgb(128,0,128)
dim r as integer
dim rr as integer
dim rrr as integer
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer

print "R?"
input r
print "W?"
input w
print "H?"
input h
print "border?"
input b
screenres 640,480,16
bb=b*2
rr=r*2+bb+1
dim as any ptr image1=imagecreate(rr,rr,paper)
line image1,(0,0)-(r*2+bb,r*2+bb),0,b
line image1,(b,b)-(r*2+b,r*2+b),0,b
line image1,(0,0)-(bb+r*2,bb+r*2),0
line image1,(0,bb+r*2)-(bb+r*2,0),0
line image1,(r+b,0)-(r+b,bb+r*2),0
line image1,(0,r+b)-(bb+r*2,r+b),0
line image1,(w+b,0)-(w+b,r*2+bb),0
line image1,(0,h+b)-(r*2+bb,h+b),0
circle image1,(b+r,b+r),r,0
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
