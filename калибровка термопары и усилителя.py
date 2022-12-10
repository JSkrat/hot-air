#!/usr/bin/env python3

from matplotlib import pyplot
import numpy as np

temperature = {
	14:  54,  # 40
	26:  61,  # 50
	42:  68,  # 59
	220: 142, # 170
	236: 148, # 182
	258: 157, # 190
	266: 162, # 200
	102: 96,  # 101
	30:  63   # 50
}

l = temperature.copy()
for i in l:
	print('%f %f' % (i, l[i]))
	
ux = sorted(list(temperature.keys()))
uy = sorted(list(temperature.values()))
A = np.vstack([ux, np.ones(len(ux))]).T
lin = np.linalg.lstsq(A, uy)
print(lin)
k, b = lin[0]
x = np.arange(1023)
pyplot.plot(x, k*x + b, 'g-', label = 'linear regression')
pyplot.plot(ux, uy, 'k+', label = 'data')
pyplot.xlabel('ADC')
pyplot.ylabel('temperature')
pyplot.legend()
pyplot.show()
