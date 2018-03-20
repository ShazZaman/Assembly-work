#!/usr/bin/python
from z3 import *
x = Real('x')
y = Real('y')
z = Real('z')
s = Solver()
s.add(x*x - 2*x + 1 == 0)
print s.check()
print s.model()
