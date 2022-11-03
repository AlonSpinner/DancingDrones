import mpl_toolkits.mplot3d 
from icosphere import icosphere
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors

vertices, faces = icosphere(nu=10)

fig = plt.figure()
ax = fig.add_subplot(projection='3d')   
ax.plot(vertices[:,0], vertices[:,1], vertices[:,2], 'o')
plt.show()
