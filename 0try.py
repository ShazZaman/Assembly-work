def mod(a,b,c):
	z=pow(a,b)
	p=b-1
	res=1
	while(p>-1):
		if(z>c):
			k=z/pow(a,p)
			if(k>c):
				res=res*(k%c)
				z=z/k
		else:
			res=res*(z%c)
		p=p-1
	print res
mod(2,7,5)
