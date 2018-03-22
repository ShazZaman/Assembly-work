#!/usr/bin/python
from z3 import *
q=0
x=Real('x')
s=Solver()
s.add(x*x -5*x +6 == 0)
s.check()
m=s.model()
print m[x]
s.add(x-m[x]!=0)
s.check()
m=s.model()
print m[x]

