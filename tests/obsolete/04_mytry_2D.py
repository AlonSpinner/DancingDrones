import numpy as np
import matplotlib.pyplot as plt

edge_length = 1.0
dh = edge_length * np.sqrt(3) / 2.0

N_cols_even = 10 #amount of vertices on an even row
N_cols_odd = N_cols_even - 1
N_rows = 5 #amount of rows

#compute amount of vertices in graph
N_rows_odd = N_rows // 2
N_rows_even = N_rows - N_rows_odd
N_vertices = N_rows_even * N_cols_even + N_rows_odd * N_cols_odd

#initalize arrays
VertexList = np.zeros((N_vertices, 2))

r, c = 0, 0
for iv in range(N_vertices):
    if r % 2 == 0: #even row
        VertexList[iv] = np.array([c * edge_length, r * dh])
        if c == N_cols_even - 1: #if we exit to next row
            r += 1
            c = 0
        else:
            c += 1
    else: #odd row
        VertexList[iv] = np.array([(c + 0.5) * edge_length, r * dh])
        if c == N_cols_odd - 1: #if we exit to next row
            r += 1
            c = 0
        else:
            c += 1

#fill connectivity list in a stupid way
connectivityList = dict()
for iv in range(N_vertices):
    VertexList[iv] - VertexList
    distances = np.linalg.norm(VertexList[iv] - VertexList,axis = 1)
    neighbors = (distances < 1.1 * edge_length) & (distances > 0.1 * edge_length)
    connectivityList[iv] = np.where(neighbors)

plt.plot(VertexList[:, 0], VertexList[:, 1], 'o')
for iv in range(N_vertices):
    for jv in connectivityList[iv]:
        for jjv in jv:
            plt.plot([VertexList[iv, 0], VertexList[jjv, 0]], [VertexList[iv, 1], VertexList[jjv, 1]], 'k-')
plt.axis('equal')
plt.show()