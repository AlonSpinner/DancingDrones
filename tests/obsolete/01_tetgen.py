import pyvista as pv
import tetgen
import numpy as np
import matplotlib.pyplot as plt

# cube = pv.Cube(center = (0.0, 0.0, 0.0), x_length = 1.0, y_length = 1.0, z_length = 1.0)
# tet = tetgen.TetGen(cube)

sphere = pv.Sphere()
tet = tetgen.TetGen(sphere)
tet.tetrahedralize(order=1, mindihedral=20, minratio=1.5)
grid = tet.grid
grid.plot(show_edges=True)

vertices = np.asarray(tet.v)
fig = plt.figure()
ax = fig.add_subplot(projection='3d')   
ax.plot(vertices[:,0], vertices[:,1], vertices[:,2], 'o')
plt.show()