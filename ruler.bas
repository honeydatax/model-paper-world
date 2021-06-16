const paper=5
dim w as integer
dim ww as integer
dim www as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim a as integer

w=40
ww=20
www=30
print "H?"
input h
screenres 640,480,4
dim as any ptr image1=imagecreate(w+1,h+1,paper)
line image1,(0,0)-(w,h),0,b
for a=0 to h/2
	line image1,(0,a*2)-(ww,a*2),0,b	
next
for a=0 to h/2 step 5
	line image1,(0,a*2)-(www,a*2),0,b	
next
for a=0 to h/2 step 10
	line image1,(0,a*2)-(w,a*2),0,b	
next


bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
