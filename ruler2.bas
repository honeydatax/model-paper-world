const paper=rgb(128,0,128)
dim w as integer
dim ww as integer
dim www as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim a as integer
dim d1 as integer
dim ss as integer

w=40
ww=20
www=30
print "H?"
input h
print "step?"
input ss
screenres 640,480,16
dim as any ptr image1=imagecreate(w+1,h+1,paper)
line image1,(0,0)-(w,h),0,b

for a=0 to h/ss
	line image1,(0,a*ss)-(ww,a*ss),0,b	
next
for a=0 to h/ss step 5
	line image1,(0,a*ss)-(www,a*ss),0,b	
next
for a=0 to h/ss step 10
	line image1,(0,a*ss)-(w,a*ss),0,b	
next


bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
