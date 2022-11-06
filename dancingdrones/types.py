from dataclasses import dataclass
import numpy as np
from unified_planning.shortcuts import Problem

@dataclass(frozen = False)
class Enviorment:
    vertices : np.ndarray
    connectivityList : dict[np.ndarray[int]]

    def N_vertices(self) -> int:
        return self.vertices.shape[0]

@dataclass(frozen = False)
class Domain:
        problem : Problem
        Types : dict
        Fluents : dict