import numpy as np

def mesh_3D(edge_length : float, 
            N_cols_even : int, N_rows : int, N_depth : int):

    tri_height = edge_length * np.sqrt(3) / 2.0
    N_cols_odd = N_cols_even - 1

    #compute amount of vertices in a single layer (2D, XY plane)
    N_rows_odd = N_rows // 2
    N_rows_even = N_rows - N_rows_odd
    N_layer_vertices = N_rows_even * N_cols_even + N_rows_odd * N_cols_odd

    #initalize arrays
    LayerVertexList = np.zeros((N_layer_vertices, 2))

    #compute vertex positions in a single layer (2D, XY plane)
    r, c = 0, 0
    for iv in range(N_layer_vertices):
        if r % 2 == 0: #even row
            LayerVertexList[iv] = np.array([c * edge_length, r * tri_height])
            if c == N_cols_even - 1: #if we exit to next row
                r += 1
                c = 0
            else:
                c += 1
        else: #odd row
            LayerVertexList[iv] = np.array([(c + 0.5) * edge_length, r * tri_height])
            if c == N_cols_odd - 1: #if we exit to next row
                r += 1
                c = 0
            else:
                c += 1

    #compute vertex positions in 3D by expanding the 2D layer
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

    return VertexList, connectivityList