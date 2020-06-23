import numpy as np
import matplotlib.pyplot as plt
import scipy.signal as sps
import scipy.interpolate as spi

# plot cubic cardinal B-spline (knots 0, 1, 2, 3, 4)
x = np.array([1, 2])
y = np.array([2, 3])

tck = spi.splrep(x, y, k=1)
xnew = np.arange(0, 2, np.pi/50)
ynew = spi.splev(xnew, tck, der=0)

# Dont take 0,0 into account
idx = np.where(xnew >= 1)[0][0]

plt.figure()
plt.plot(x, y, 'bo-')
# plt.plot(x, y, 'x', xnew, ynew, xnew, np.sin(xnew), x, y, 'b')
plt.plot(xnew[idx:], ynew[idx:], 'r--')
plt.legend(['Linear', 'Linearly combined'])
plt.axis([0, 3, 0, 4])
# plt.title('Linear-spline interpolation')
plt.show()
