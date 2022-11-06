import matplotlib.pyplot as plt
import numpy as np
from dancingdrones.mesher import mesh_3D


vertexList, connectivityList = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 4, N_depth = 4)

fig = plt.figure()
ax = fig.add_subplot(projection='3d')   
ax.plot(vertexList[:, 0], vertexList[:, 1], vertexList[:, 2], 'o')
for iv in range(vertexList.shape[0]):
    for jv in connectivityList[iv]:
        plt.plot([vertexList[iv, 0], vertexList[jv, 0]],
                    [vertexList[iv, 1], vertexList[jv, 1]],
                    [vertexList[iv, 2], vertexList[jv, 2]],
                    'k-')
ax.axis('equal')
plt.show()