import matplotlib.pyplot as plt
import numpy as np
from dancingdrones.mesher import mesh_3D
from dancingdrones.utils import plot_env


env = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 4, N_depth = 4)

fig = plt.figure()
ax = fig.add_subplot(projection='3d')   
plot_env(ax, env, texts = 'on')
ax.axis('equal')
plt.show()