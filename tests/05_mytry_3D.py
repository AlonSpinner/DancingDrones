import numpy as np
import matplotlib.pyplot as plt

edge_length = 1.0
dh = edge_length * np.sqrt(3) / 2.0

N_cols_even = 10 #amount of vertices on an even row
N_cols_odd = N_cols_even - 1
N_rows = 5 #amount of rows
N_depth = 5

#compute amount of vertices in graph
N_rows_odd = N_rows // 2
N_rows_even = N_rows - N_rows_odd
N_layer_vertices = N_rows_even * N_cols_even + N_rows_odd * N_cols_odd

#initalize arrays
LayerVertexList = np.zeros((N_layer_vertices, 2))

r, c, d = 0, 0, 0
for iv in range(N_layer_vertices):
    if r % 2 == 0: #even row
        LayerVertexList[iv] = np.array([c * edge_length, r * dh])
        if c == N_cols_even - 1: #if we exit to next row
            r += 1
            c = 0
        else:
            c += 1
    else: #odd row
        LayerVertexList[iv] = np.array([(c + 0.5) * edge_length, r * dh])
        if c == N_cols_odd - 1: #if we exit to next row
            r += 1
            c = 0
        else:
            c += 1

N_vertices = N_layer_vertices * N_depth
VertexList = np.zeros((N_vertices, 3))
for d in range(N_depth):
    VertexList[d * N_layer_vertices : (d + 1) * N_layer_vertices, 0:2] = LayerVertexList
    VertexList[d * N_layer_vertices : (d + 1) * N_layer_vertices, 2] = d * edge_length

#fill connectivity list in a stupid way
connectivityList = dict()
for iv in range(N_vertices):
    VertexList[iv] - VertexList
    distances = np.linalg.norm(VertexList[iv] - VertexList,axis = 1)
    neighbors = (distances < 1.1 * edge_length) & (distances > 0.1 * edge_length)
    connectivityList[iv] = np.where(neighbors)


fig = plt.figure()
ax = fig.add_subplot(projection='3d')   
ax.plot(VertexList[:, 0], VertexList[:, 1], VertexList[:, 2], 'o')
for iv in range(N_vertices):
    for jv in connectivityList[iv]:
        for jjv in jv:
            plt.plot([VertexList[iv, 0], VertexList[jjv, 0]],
                     [VertexList[iv, 1], VertexList[jjv, 1]],
                     [VertexList[iv, 2], VertexList[jjv, 2]],
                     'k-')
ax.axis('equal')
plt.show()