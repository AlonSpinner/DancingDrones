import numpy as np

def multiInterp2(x, xp, fp):
    '''
    modified from:
    https://stackoverflow.com/questions/43772218/fastest-way-to-use-numpy-interp-on-a-2-d-array

    x: 1D array of values to interpolate
    xp: 1D array of x-coordinates of the data points
    fp: 2D array of y-coordinates of the data points, fp.shape[0] == xp.shape[0]
    '''
    j = np.searchsorted(xp, x) - 1
    d = (x - xp[j]) / (xp[j + 1] - xp[j])
    return ((1 - d) * fp[j].T + fp[j + 1].T * d).T