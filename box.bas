const paper=5
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim m as integer
dim mm as integer
dim a as integer
dim z as integer
dim x as integer
dim y as integer

print "W?"
input w
print "H?"
input h
print "Z?"
input z
m=4
mm=4
print "border?"
input b
screenres 640,480,4
bb=b*2
bbb=bb*2
dim as any ptr image1=imagecreate(z+w+z+bb+1,bb+z+h+z+h+1,paper)
line image1,(0,0)-(z+w+z+bb,bb+z+h+z+h),0,b
'1
	line image1,(b+z,b)-(b+z+w,b+z),0,b
'2
	line image1,(b,b+z)-(b+z,b+z+h),0,b
'3
	line image1,(b+z,b+z)-(b+z+w,b+z+h),0,b
'4
	line image1,(b+z+w,b+z)-(b+z+w+z,b+z+h),0,b
'5
	line image1,(b+z,b+z+h)-(b+z+w,b+z+h+z),0,b
'6
	line image1,(b+z,b+z+h+z)-(b+z+w,b+z+h+z+h),0,b
' 
	
bsave("out.bmp",image1)
imagedestroy(image1)
print "end"
