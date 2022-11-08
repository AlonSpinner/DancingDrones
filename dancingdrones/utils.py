import numpy as np
from dancingdrones.types import Enviorment

def random_state(N_agents : int , N_vertices : int, seed : int) -> np.ndarray:
    state = np.arange(N_vertices)
    np.random.seed(seed)
    np.random.shuffle(state)
    return state[:N_agents]

def multiInterp2(x, xp, fp):
    '''
    modified from:
    https://stackoverflow.com/questions/43772218/fastest-way-to-use-numpy-interp-on-a-2-d-array

    x: 1D array of values to interpolate
    xp: 1D array of x-coordinates of the data points
    fp: 2D array of y-coordinates of the data points, fp.shape[0] == xp.shape[0]
    '''
    d = fp.shape[1]
    fpT = fp.T
    return np.array([np.interp(x, xp, fpT[i]) for i in range(d)]).T

def findBounds(vertices):
    '''
    Find the bounds of the vertices
    '''
    x_min = np.min(vertices[:,0])
    x_max = np.max(vertices[:,0])
    y_min = np.min(vertices[:,1])
    y_max = np.max(vertices[:,1])
    z_min = np.min(vertices[:,2])
    z_max = np.max(vertices[:,2])
    return x_min, x_max, y_min, y_max, z_min, z_max

def plot_env(ax, env : Enviorment, texts = 'off'):
    ax.plot(env.vertices[:, 0], env.vertices[:, 1], env.vertices[:, 2], 'o', markersize = 2.0)
    for iv in range(env.vertices.shape[0]):
        for jv in env.connectivityList[iv]:
            ax.plot([env.vertices[iv, 0], env.vertices[jv, 0]],
                        [env.vertices[iv, 1], env.vertices[jv, 1]],
                        [env.vertices[iv, 2], env.vertices[jv, 2]],
                        'k--',linewidth=0.1)
    if texts == 'on':
        for iv in range(env.vertices.shape[0]):
            ax.text(env.vertices[iv, 0], env.vertices[iv, 1], env.vertices[iv, 2], str(iv))