#!/usr/bin/env python3

from math import acos, factorial, pi
from matplotlib import pyplot
import numpy

def goal(x):
	#return 3183.1 * acos(x/512 - 1)
	return acos(x/512 - 1) / pi

def poch(x, n):
	ret = 1;
	for i in range(n):
		ret *= (x - i)
	return ret

def pow(x, n):
	ret = 1;
	for i in range(n):
		ret *= x
	return ret

def series(x, iterations):
	ret = 5000
	for i in range(iterations):
		n = i
		ret -= 3183 * pow(x/512-1, 2*n+1)*poch(1/2, n) / (2*n+1) / factorial(n)
	return ret

#print('taylor series:')
epsilon = 0.005
goalx = []
goaly = []
seriesy = []
prev = 0
prevDer = 0
points = []
for i in range(0, 1023, 8):
	g = goal(i)
	s = series(i, 10)
	goalx.append(i)
	goaly.append(g)
	seriesy.append(s)
	#print(g, s, abs(g - s))
	# вычисляем производную и смотрим, где нужны точки
	der = abs(prev - g)
	if epsilon < abs(der - prevDer):
		prevDer = der
		points.append(i)
	prev = g

input = []
output = []
print('%d values' % (len(points)))
for x in points: #[0, 16, 48, 112, 256, 768, 912, 976, 1008, 1023]:
	#x = i * 1024/8
	input.append(x)
	output.append(goal(x))
	print(x, output[-1])

print('handmade values:')
inputh1 = []; inputh2 = [];
outputh1 = []; outputh2 = []
for x in [0, 8, 24, 50, 144]:
	inputh1.append(x)
	inputh2.insert(0, 1023-x)
	outputh1.append(goal(x))
	outputh2.insert(0, goal(1023-x))

inputh = inputh1+inputh2
outputh = outputh1+outputh2
x0 = -1; y0 = -1
for i in range(len(inputh)):
	if -1 == x0:
		x0 = inputh[i]
		y0 = outputh[i]
		continue
	x1 = inputh[i]
	y1 = outputh[i]
	dx = x1 - x0
	dy = y1 - y0
	k = dy/dx
	b = y1 - k*x1
	print('x0 = %.2f, y0 = %.2f, x1 = %.2f, y1 = %.2f: y = %.5fx + %.3f' % (x0, y0, x1, y1, k, b))
	x = numpy.arange(x0-10, x1+10, 10)
	#y = numpy.arange(y0, y1, dy)
	pyplot.plot(x, k*x+b, 'k:')
	x0 = x1
	y0 = y1

#input.append(1023)
#output.append(0)
#pyplot.plot(goalx, seriesy, 'g-+', label = 'Taylor series')
pyplot.plot(goalx, goaly, 'r-+', label = 'function')
#pyplot.plot(input, output, 'b-^', label = 'extrapolation auto')
pyplot.plot(inputh, outputh, 'b--v', label = 'extrapolation symmetrical')
pyplot.xlabel('input')
pyplot.ylabel('output')
pyplot.legend()
pyplot.show()
