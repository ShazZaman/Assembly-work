import math
def pri(a):
	i=0
	lol=[]
	z=int(math.sqrt(a))
	factor=list(range(2,z+1))
	#print factor
	while(len(factor)!=0 and factor[i]<=z):
		if (a % factor[i]!=0) and (factor[i] not in lol) :	
			#print lol
			j=1
			p=factor[i]
			k=j*p
			while(k<=z):
				if k not in lol:
					lol.append(k)
					factor.remove(k)
				j=j+1
				k=j*p
							
		elif a % factor[i]==0:
			print "not a prime no."
			break
		i=0
	if len(factor)==0 :
		print "it is a prime no."
pri(39)
	
