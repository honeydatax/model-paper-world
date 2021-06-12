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
bbb=bb*2
rr=r*2+b+b
rr=rr+b+b
dim as any ptr image1=imagecreate(rr,rr,paper)
line image1,(0,0)-(r*2+bbb,r*2+bbb),0,b
line image1,(0,0)-(bbb+r*2,bbb+r*2),0
line image1,(0,bbb+r*2)-(bbb+r*2,0),0
line image1,(r+bb,0)-(r+bb,bbb+r*2),0
line image1,(0,r+bb)-(bbb+r*2,r+bb),0
line image1,(w+bb,0)-(w+bb,bbb+r*2),0
line image1,(0,h+bb)-(bbb+r*2,h+bb),0
circle image1,(bb+r,bb+r),r,0
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
